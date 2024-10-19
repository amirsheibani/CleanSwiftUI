protocol BaseUseCase{
    associatedtype R
    associatedtype P
    func call(arg: P) -> R
}

protocol BaseUseCaseNoArgs{
    associatedtype R
    func call() -> R
}
