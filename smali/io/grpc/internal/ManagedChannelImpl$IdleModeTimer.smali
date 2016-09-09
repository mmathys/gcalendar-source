.class Lio/grpc/internal/ManagedChannelImpl$IdleModeTimer;
.super Ljava/lang/Object;
.source "ManagedChannelImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ManagedChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleModeTimer"
.end annotation


# instance fields
.field cancelled:Z

.field final synthetic this$0:Lio/grpc/internal/ManagedChannelImpl;


# direct methods
.method private constructor <init>(Lio/grpc/internal/ManagedChannelImpl;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$IdleModeTimer;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/internal/ManagedChannelImpl$1;)V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lio/grpc/internal/ManagedChannelImpl$IdleModeTimer;-><init>(Lio/grpc/internal/ManagedChannelImpl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$IdleModeTimer;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    # getter for: Lio/grpc/internal/ManagedChannelImpl;->lock:Ljava/lang/Object;
    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl;->access$000(Lio/grpc/internal/ManagedChannelImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 192
    :try_start_0
    iget-boolean v2, p0, Lio/grpc/internal/ManagedChannelImpl$IdleModeTimer;->cancelled:Z

    if-eqz v2, :cond_0

    .line 194
    monitor-exit v1

    .line 210
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImpl$IdleModeTimer;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    # getter for: Lio/grpc/internal/ManagedChannelImpl;->loadBalancer:Lio/grpc/LoadBalancer;
    invoke-static {v2}, Lio/grpc/internal/ManagedChannelImpl;->access$300(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/LoadBalancer;

    move-result-object v2

    .line 198
    iget-object v3, p0, Lio/grpc/internal/ManagedChannelImpl$IdleModeTimer;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    const/4 v4, 0x0

    # setter for: Lio/grpc/internal/ManagedChannelImpl;->loadBalancer:Lio/grpc/LoadBalancer;
    invoke-static {v3, v4}, Lio/grpc/internal/ManagedChannelImpl;->access$302(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/LoadBalancer;)Lio/grpc/LoadBalancer;

    .line 199
    iget-object v3, p0, Lio/grpc/internal/ManagedChannelImpl$IdleModeTimer;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    # getter for: Lio/grpc/internal/ManagedChannelImpl;->nameResolver:Lio/grpc/NameResolver;
    invoke-static {v3}, Lio/grpc/internal/ManagedChannelImpl;->access$400(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/NameResolver;

    move-result-object v3

    .line 200
    iget-object v4, p0, Lio/grpc/internal/ManagedChannelImpl$IdleModeTimer;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    iget-object v5, p0, Lio/grpc/internal/ManagedChannelImpl$IdleModeTimer;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    # getter for: Lio/grpc/internal/ManagedChannelImpl;->target:Ljava/lang/String;
    invoke-static {v5}, Lio/grpc/internal/ManagedChannelImpl;->access$500(Lio/grpc/internal/ManagedChannelImpl;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lio/grpc/internal/ManagedChannelImpl$IdleModeTimer;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    # getter for: Lio/grpc/internal/ManagedChannelImpl;->nameResolverFactory:Lio/grpc/NameResolver$Factory;
    invoke-static {v6}, Lio/grpc/internal/ManagedChannelImpl;->access$600(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/NameResolver$Factory;

    move-result-object v6

    iget-object v7, p0, Lio/grpc/internal/ManagedChannelImpl$IdleModeTimer;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    # getter for: Lio/grpc/internal/ManagedChannelImpl;->nameResolverParams:Lio/grpc/Attributes;
    invoke-static {v7}, Lio/grpc/internal/ManagedChannelImpl;->access$700(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/Attributes;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lio/grpc/internal/ManagedChannelImpl;->getNameResolver(Ljava/lang/String;Lio/grpc/NameResolver$Factory;Lio/grpc/Attributes;)Lio/grpc/NameResolver;

    move-result-object v5

    # setter for: Lio/grpc/internal/ManagedChannelImpl;->nameResolver:Lio/grpc/NameResolver;
    invoke-static {v4, v5}, Lio/grpc/internal/ManagedChannelImpl;->access$402(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/NameResolver;)Lio/grpc/NameResolver;

    .line 201
    iget-object v4, p0, Lio/grpc/internal/ManagedChannelImpl$IdleModeTimer;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    # getter for: Lio/grpc/internal/ManagedChannelImpl;->transports:Ljava/util/Map;
    invoke-static {v4}, Lio/grpc/internal/ManagedChannelImpl;->access$800(Lio/grpc/internal/ManagedChannelImpl;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 202
    iget-object v4, p0, Lio/grpc/internal/ManagedChannelImpl$IdleModeTimer;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    # getter for: Lio/grpc/internal/ManagedChannelImpl;->transports:Ljava/util/Map;
    invoke-static {v4}, Lio/grpc/internal/ManagedChannelImpl;->access$800(Lio/grpc/internal/ManagedChannelImpl;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 203
    iget-object v4, p0, Lio/grpc/internal/ManagedChannelImpl$IdleModeTimer;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    # getter for: Lio/grpc/internal/ManagedChannelImpl;->decommissionedTransports:Ljava/util/HashSet;
    invoke-static {v4}, Lio/grpc/internal/ManagedChannelImpl;->access$900(Lio/grpc/internal/ManagedChannelImpl;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 204
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/TransportSet;

    .line 206
    invoke-virtual {v0}, Lio/grpc/internal/TransportSet;->shutdown()V

    goto :goto_1

    .line 204
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 208
    :cond_1
    invoke-virtual {v2}, Lio/grpc/LoadBalancer;->shutdown()V

    .line 209
    invoke-virtual {v3}, Lio/grpc/NameResolver;->shutdown()V

    goto :goto_0
.end method
