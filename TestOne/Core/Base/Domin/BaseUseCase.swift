protocol BaseUseCase{
    associatedtype R
    associatedtype P
    func call(arg: P) async -> R
}

protocol BaseUseCaseNoArgs{
    associatedtype R
    func call() async -> R
}
