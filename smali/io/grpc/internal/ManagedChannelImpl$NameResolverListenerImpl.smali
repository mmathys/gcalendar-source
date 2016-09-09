.class Lio/grpc/internal/ManagedChannelImpl$NameResolverListenerImpl;
.super Ljava/lang/Object;
.source "ManagedChannelImpl.java"

# interfaces
.implements Lio/grpc/NameResolver$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ManagedChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NameResolverListenerImpl"
.end annotation


# instance fields
.field final balancer:Lio/grpc/LoadBalancer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/LoadBalancer",
            "<",
            "Lio/grpc/internal/ClientTransport;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/grpc/internal/ManagedChannelImpl;


# direct methods
.method constructor <init>(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/LoadBalancer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/LoadBalancer",
            "<",
            "Lio/grpc/internal/ClientTransport;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 685
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListenerImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 686
    iput-object p2, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListenerImpl;->balancer:Lio/grpc/LoadBalancer;

    .line 687
    return-void
.end method


# virtual methods
.method public onError(Lio/grpc/Status;)V
    .locals 2

    .prologue
    .line 707
    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "the error status must not be OK"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 708
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListenerImpl;->balancer:Lio/grpc/LoadBalancer;

    invoke-virtual {v0, p1}, Lio/grpc/LoadBalancer;->handleNameResolutionError(Lio/grpc/Status;)V

    .line 709
    return-void

    .line 707
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onUpdate(Ljava/util/List;Lio/grpc/Attributes;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/util/List",
            "<",
            "Lio/grpc/ResolvedServerInfo;",
            ">;>;",
            "Lio/grpc/Attributes;",
            ")V"
        }
    .end annotation

    .prologue
    .line 691
    # invokes: Lio/grpc/internal/ManagedChannelImpl;->serversAreEmpty(Ljava/util/List;)Z
    invoke-static {p1}, Lio/grpc/internal/ManagedChannelImpl;->access$2400(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    sget-object v0, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    const-string v1, "NameResolver returned an empty list"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/internal/ManagedChannelImpl$NameResolverListenerImpl;->onError(Lio/grpc/Status;)V

    .line 703
    :goto_0
    return-void

    .line 695
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListenerImpl;->balancer:Lio/grpc/LoadBalancer;

    invoke-virtual {v0, p1, p2}, Lio/grpc/LoadBalancer;->handleResolvedAddresses(Ljava/util/List;Lio/grpc/Attributes;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 696
    :catch_0
    move-exception v0

    .line 699
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListenerImpl;->balancer:Lio/grpc/LoadBalancer;

    sget-object v2, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    invoke-virtual {v2, v0}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x27

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Thrown from handleResolvedAddresses(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 700
    invoke-virtual {v2, v0}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 699
    invoke-virtual {v1, v0}, Lio/grpc/LoadBalancer;->handleNameResolutionError(Lio/grpc/Status;)V

    goto :goto_0
.end method
