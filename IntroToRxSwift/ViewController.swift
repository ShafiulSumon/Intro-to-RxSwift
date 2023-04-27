//
//  ViewController.swift
//  IntroToRxSwift
//
//  Created by ShafiulAlam-00058 on 4/6/23.
//

import UIKit
import RxSwift
import RxCocoa

enum MyError: Error {
    case someError
}


class ViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var emailError: UILabel!
    
    @IBOutlet weak var passwordError: UILabel!
    
    private var disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        emailField.rx.text.changed.subscribe(onNext: {
        //            guard let text = $0 else { return }
        //            self.emailError.text = text.contains("!") ? "Invalid Email" : ""
        //        }).disposed(by: disposeBag)
        //
        //        passwordField.rx.text.changed.subscribe(onNext: {
        //            guard let text = $0 else { return }
        //            self.passwordError.text = text.contains("@") ? "Invalid Password" : ""
        //        }).disposed(by: disposeBag)
        
        
        //        let subject = Observable.from([1,2,3,4,5])
        //
        //        subject
        //            .subscribe { val in
        //                print(val)
        //            }
        //            .disposed(by: disposeBag)
        //
        //        subject
        //            .filter{$0%2 == 0}
        //            .subscribe( onNext: { val in
        //                print(val)
        //            })
        //            .disposed(by: disposeBag)
        
        //    MARK: - PublishSubject
        
        //        let subject = PublishSubject<String>()
        //        subject.onNext("Hello")
        //
        //        subject.subscribe(onNext: {
        //            print($0)
        //        })
        //
        //        subject.onNext("world")
        
        //    MARK: - BehaviorSubject
        
        //        let subject = BehaviorSubject(value: "A")
        //        subject.onNext("B")
        //
        //        subject.subscribe { value in
        //            print(value)
        //        }
        //
        //        subject.onNext("C")
        //
        //        subject.subscribe { val in
        //            print(val)
        //        }
        
        //    MARK: - ReplaySubject
        
        //        let subject = ReplaySubject<Int>.create(bufferSize: 4)
        //        subject.onNext(1)
        //        subject.onNext(2)
        //        subject.onNext(3)
        //        subject.onNext(4)
        //        subject.onNext(5)
        //
        //        subject.subscribe { val in
        //            print(val)
        //        }
        //
        //        subject.onNext(6)
        
        //    MARK: - Asyncsubject
        
        //        let subject = AsyncSubject<Int>()
        //        subject.onNext(3)
        //        subject.onNext(2)
        //        subject.onCompleted()
        //        subject.subscribe { val in
        //            print(val)
        //        }
        
        
        
//    MARK: - Single
        
//        let subject = Single<String>.create { single in
//            let success = Bool.random()
//
//            if success {
//                single(.success("Success!!"))
//            }
//            else {
//                single(.failure(MyError.someError))
//            }
//
//            return Disposables.create()
//        }
//
//        subject.subscribe { value in
//            print(value)
//        } onFailure: { error in
//            print(error)
//        }.disposed(by: disposeBag)
        
        
//        let observable = Observable<Int>.create { observer in
//            print("Observable in thread: \(Thread.current)")
//
//            observer.onNext(1)
//            observer.onNext(2)
//            observer.onNext(3)
//
//            observer.onCompleted()
//
//            return Disposables.create()
//        }
//
//        let _ = observable.subscribe(on: ConcurrentDispatchQueueScheduler(qos: .background))
//            .observe(on: MainScheduler.instance)
//            .subscribe { value in
//                print("Subscriber in thread: \(Thread.current)")
//                print(value)
//            }
        
//        let customObservable = Observable<String>.create { observer in
//          observer.onNext("One")
//          observer.onNext("Two")
//          observer.onNext("Three")
//            observer.onError(MyError.someError)
//          observer.onNext("Four") // This value will not be emitted since an error has occurred
//          observer.onCompleted()
//          return Disposables.create()
//        }
//
//        customObservable.subscribe(
//          onNext: { print($0) },
//          onError: { print($0) },
//          onCompleted: { print("completed") }
//        ).disposed(by: disposeBag)
        
//        let subject = Observable.from([1,2,3,4,5])
//
//        subject.map({String($0)})
//            .subscribe { value in
//                print(value)
//            }
//            .disposed(by: disposeBag)
        
        var a: Any = 10
        var b: Any = "Hello"
        
        print(a, b)
        //swap(&a, &b)
        swapAny(&a, &b)
        print(a, b)
        
        
    }
    
    func swap<T>(_ a: inout T, _ b: inout T) {
        var temp: T = a
        a = b
        b = temp
    }
    
    func swapAny(_ a: inout Any, _ b: inout Any) {
        var temp: Any = a
        a = b
        b = temp
    }
}

