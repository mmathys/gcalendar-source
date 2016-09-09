.class public final Lio/grpc/DummyLoadBalancerFactory;
.super Lio/grpc/LoadBalancer$Factory;
.source "DummyLoadBalancerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer;
    }
.end annotation


# static fields
.field private static final instance:Lio/grpc/DummyLoadBalancerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lio/grpc/DummyLoadBalancerFactory;

    invoke-direct {v0}, Lio/grpc/DummyLoadBalancerFactory;-><init>()V

    sput-object v0, Lio/grpc/DummyLoadBalancerFactory;->instance:Lio/grpc/DummyLoadBalancerFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lio/grpc/LoadBalancer$Factory;-><init>()V

    .line 55
    return-void
.end method

.method public static getInstance()Lio/grpc/DummyLoadBalancerFactory;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lio/grpc/DummyLoadBalancerFactory;->instance:Lio/grpc/DummyLoadBalancerFactory;

    return-object v0
.end method


# virtual methods
.method public newLoadBalancer(Ljava/lang/String;Lio/grpc/TransportManager;)Lio/grpc/LoadBalancer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lio/grpc/TransportManager",
            "<TT;>;)",
            "Lio/grpc/LoadBalancer",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer;-><init>(Lio/grpc/TransportManager;Lio/grpc/DummyLoadBalancerFactory$1;)V

    return-object v0
.end method
