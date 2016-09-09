.class Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer$1;
.super Ljava/lang/Object;
.source "DummyLoadBalancerFactory.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer;->handleResolvedAddresses(Ljava/util/List;Lio/grpc/Attributes;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer;

.field final synthetic val$newAddresses:Lio/grpc/EquivalentAddressGroup;


# direct methods
.method constructor <init>(Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer;Lio/grpc/EquivalentAddressGroup;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer$1;->this$0:Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer;

    iput-object p2, p0, Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer$1;->val$newAddresses:Lio/grpc/EquivalentAddressGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer$1;->this$0:Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer;

    # getter for: Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer;->tm:Lio/grpc/TransportManager;
    invoke-static {v0}, Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer;->access$100(Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer;)Lio/grpc/TransportManager;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer$1;->val$newAddresses:Lio/grpc/EquivalentAddressGroup;

    invoke-virtual {v0, v1}, Lio/grpc/TransportManager;->getTransport(Lio/grpc/EquivalentAddressGroup;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
