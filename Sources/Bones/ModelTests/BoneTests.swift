import Foundation
import Quick
import RxSwift
import Nimble
@testable import ModelLayer

class ___BonePlaceholder___Spec: QuickSpec {
    override func spec() {
        beforeEach {
            setupForTests()
        }
        
        describe("a single ___BonePlaceholder___") {
            var ___BonePlaceholderLowercased___:___BonePlaceholder___!
            context("when is Test") {
                beforeEach {
                    ___BonePlaceholderLowercased___ = Show(data: "___BonePlaceholder___singleItem".jsonMock())
                }
                it ("should exist") {
                    expect(___BonePlaceholder___).notTo(beNil())
                }
                it("should have an ID") {
                    expect(___BonePlaceholder___.id).to(equal("1"))
                }
            }
        }
        
        describe("a ___BonePlaceholder___ list") {
            context("when has a single item") {
                var o:Observable<[___BonePlaceholder___]>!
                
                beforeEach {
                    Dependency.register("___BonePlaceholder___list".jsonMock(), for: TVMazeAPI.shows)
                    o = DataManager.rx.___BonePlaceholder___s().share(replay: 1, scope: .forever)
                }
                
                it("should return a single ___BonePlaceholder___ object") {
                    expect(o).first.to(haveCount(1))
                    expect(o).first.notTo(haveCount(2))
                    expect(o.any).first.to(beAKindOf([___BonePlaceholder___].self))
                }
            }
        }
    }
}
