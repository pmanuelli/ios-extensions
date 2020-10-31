import RxSwift

public extension Observable where Element == Int {
    static func countdownTimer(from: Int, to: Int,
                               period: RxTimeInterval = .seconds(1),
                               scheduler: SchedulerType = MainScheduler.instance) -> Observable<Int> {
        
        Observable<Int>
            .timer(.seconds(0), period: period, scheduler: scheduler)
            .take(from - to + 1)
            .map { from - $0 }
    }
}
