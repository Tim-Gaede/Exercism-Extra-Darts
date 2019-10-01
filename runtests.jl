using Test
include("darts.jl")


# Tests adapted from `problem-specifications//canonical-data.json` @ v2.2.0


@testset "missed target" begin
    @test score(-9, 9) == 0
end

@testset "on the outer circle" begin
    @test score(0, 10) == 1
end

@testset "on the middle circle" begin
    @test score(-5, 0) == 5
end

@testset "on the inner circle" begin
    @test score(0, -1) == 10
end

@testset "exactly on centre" begin
    @test score(0, 0) == 10
end

@testset "near the centre" begin
    @test score(-0.1, -0.1) == 10
end

@testset "just within the inner circle" begin
    @test score(0.7, 0.7) == 10
end

@testset "just outside the inner circle" begin
    @test score(0.8, -0.8) == 5
end

@testset "just within the middle circle" begin
    @test score(-3.5, 3.5) ≈ 5
end

@testset "just outside the middle circle" begin
    @test score(-3.6, -3.6) ≈ 1
end

@testset "just within the outer circle" begin
    @test score(-7.0, 7.0) ≈ 1
end

@testset "just outside the outer circle" begin
    @test score(7.1, -7.1) ≈ 0
end

@testset "asymmetric position between the inner and middle circles" begin
    @test score(0.5, -4) ≈ 5
end
