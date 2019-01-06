import Foundation
import Quick
import RxSwift
import Nimble
@testable import ModelLayer

class {{ name|firstUppercase }}Spec: QuickSpec {
    override func spec() {
        beforeEach {
            setupForTests()
        }
        
        describe("a single {{ name|firstUppercase }}") {
            var {{ name|firstLowercase }}:{{ name|firstUppercase }}!
            context("when is Test") {
                beforeEach {
                    {{ name|firstLowercase }} = Show(data: "{{ name|firstUppercase }}_singleItem".jsonMock())
                }
                it ("should exist") {
                    expect({{ name|firstUppercase }}).notTo(beNil())
                }
                it("should have an ID") {
                    expect({{ name|firstUppercase }}.id).to(equal("1"))
                }
            }
        }
        
        describe("a {{ name|firstUppercase }} list") {
            context("when has a single item") {
                var o:Observable<[{{ name|firstUppercase }}]>!
                
                beforeEach {
                    Dependency.register("{{ name|firstUppercase }}_list".jsonMock(), for: TVMazeAPI.shows)
                    o = DataManager.rx.{{ name|firstLowercase }}s().share(replay: 1, scope: .forever)
                }
                
                it("should return a single {{ name|firstUppercase }} object") {
                    expect(o).first.to(haveCount(1))
                    expect(o).first.notTo(haveCount(2))
                    expect(o.any).first.to(beAKindOf([{{ name|firstUppercase }}].self))
                }
            }
        }
    }
}
