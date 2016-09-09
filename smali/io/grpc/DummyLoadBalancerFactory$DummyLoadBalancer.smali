.class Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer;
.super Lio/grpc/LoadBalancer;
.source "DummyLoadBalancerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/DummyLoadBalancerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DummyLoadBalancer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/LoadBalancer",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final SHUTDOWN_STATUS:Lio/grpc/Status;


# instance fields
.field private addresses:Lio/grpc/EquivalentAddressGroup;

.field private closed:Z

.field private interimTransport:Lio/grpc/TransportManager$InterimTransport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/TransportManager$InterimTransport",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private nameResolutionError:Lio/grpc/Status;

.field private final tm:Lio/grpc/TransportManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/TransportManager",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    sget-object v0, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    const-string v1, "DummyLoadBalancer has shut down"

    .line 68
    invoke-virtual {v0, v1}, Lio/grpc/Status;->augmentDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    sput-object v0, Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer;->SHUTDOWN_STATUS:Lio/grpc/Status;

    .line 67
    return-void
.end method

.method private constructor <init>(Lio/grpc/TransportManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/TransportManager",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0}, Lio/grpc/LoadBalancer;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer;->lock:Ljava/lang/Object;

    .line 84
    iput-object p1, p0, Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer;->tm:Lio/grpc/TransportManager;

    .line 85
    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/TransportManager;Lio/grpc/DummyLoadBalancerFactory$1;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer;-><init>(Lio/grpc/TransportManager;)V

    return-void
.end method

.method static synthetic access$100(Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer;)Lio/grpc/TransportManager;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer;->tm:Lio/grpc/TransportManager;

    return-object v0
.end method


# virtual methods
.method public handleNameResolutionError(Lio/grpc/Status;)V
    .locals 4

    .prologue
    .line 144
    iget-object v1, p0, Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 145
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer;->closed:Z

    if-eqz v0, :cond_1

    .line 146
    monitor-exit v1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    const-string v0, "Name resolution failed"

    invoke-virtual {p1, v0}, Lio/grpc/Status;->augmentDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 149
    iget-object v2, p0, Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer;->interimTransport:Lio/grpc/TransportManager$InterimTransport;

    .line 150
    const/4 v3, 0x0

    iput-object v3, p0, Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer;->interimTransport:Lio/grpc/TransportManager$InterimTransport;

    .line 151
    iput-object v0, p0, Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer;->nameResolutionError:Lio/grpc/Status;

    .line 152
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    if-eqz v2, :cond_0

    .line 154
    invoke-interface {v2, v0}, Lio/grpc/TransportManager$InterimTransport;->closeWithError(Lio/grpc/Status;)V

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public handleResolvedAddresses(Ljava/util/List;Lio/grpc/Attributes;)V
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
    .line 113
    iget-object v1, p0, Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 114
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer;->closed:Z

    if-eqz v0, :cond_1

    .line 115
    monitor-exit v1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 118
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 119
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/ResolvedServerInfo;

    .line 120
    invoke-virtual {v0}, Lio/grpc/ResolvedServerInfo;->getAddress()Ljava/net/SocketAddress;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 123
    :cond_3
    :try_start_1
    new-instance v0, Lio/grpc/EquivalentAddressGroup;

    invoke-direct {v0, v2}, Lio/grpc/EquivalentAddressGroup;-><init>(Ljava/util/List;)V

    .line 124
    iget-object v2, p0, Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer;->addresses:Lio/grpc/EquivalentAddressGroup;

    invoke-virtual {v0, v2}, Lio/grpc/EquivalentAddressGroup;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 125
    monitor-exit v1

    goto :goto_0

    .line 127
    :cond_4
    iput-object v0, p0, Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer;->addresses:Lio/grpc/EquivalentAddressGroup;

    .line 128
    const/4 v2, 0x0

    iput-object v2, p0, Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer;->nameResolutionError:Lio/grpc/Status;

    .line 129
    iget-object v2, p0, Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer;->interimTransport:Lio/grpc/TransportManager$InterimTransport;

    .line 130
    const/4 v3, 0x0

    iput-object v3, p0, Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer;->interimTransport:Lio/grpc/TransportManager$InterimTransport;

    .line 131
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    if-eqz v2, :cond_0

    .line 133
    new-instance v1, Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer$1;

    invoke-direct {v1, p0, v0}, Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer$1;-><init>(Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer;Lio/grpc/EquivalentAddressGroup;)V

    invoke-interface {v2, v1}, Lio/grpc/TransportManager$InterimTransport;->closeWithRealTransports(Lcom/google/common/base/Supplier;)V

    goto :goto_0
.end method

.method public pickTransport(Lio/grpc/Attributes;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/Attributes;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v1, p0, Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 91
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer;->closed:Z

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer;->tm:Lio/grpc/TransportManager;

    sget-object v2, Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer;->SHUTDOWN_STATUS:Lio/grpc/Status;

    invoke-virtual {v0, v2}, Lio/grpc/TransportManager;->createFailingTransport(Lio/grpc/Status;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    .line 105
    :goto_0
    return-object v0

    .line 94
    :cond_0
    iget-object v0, p0, Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer;->addresses:Lio/grpc/EquivalentAddressGroup;

    .line 95
    if-nez v0, :cond_3

    .line 96
    iget-object v0, p0, Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer;->nameResolutionError:Lio/grpc/Status;

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer;->tm:Lio/grpc/TransportManager;

    iget-object v2, p0, Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer;->nameResolutionError:Lio/grpc/Status;

    invoke-virtual {v0, v2}, Lio/grpc/TransportManager;->createFailingTransport(Lio/grpc/Status;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 99
    :cond_1
    :try_start_1
    iget-object v0, p0, Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer;->interimTransport:Lio/grpc/TransportManager$InterimTransport;

    if-nez v0, :cond_2

    .line 100
    iget-object v0, p0, Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer;->tm:Lio/grpc/TransportManager;

    invoke-virtual {v0}, Lio/grpc/TransportManager;->createInterimTransport()Lio/grpc/TransportManager$InterimTransport;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer;->interimTransport:Lio/grpc/TransportManager$InterimTransport;

    .line 102
    :cond_2
    iget-object v0, p0, Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer;->interimTransport:Lio/grpc/TransportManager$InterimTransport;

    invoke-interface {v0}, Lio/grpc/TransportManager$InterimTransport;->transport()Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 104
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    iget-object v1, p0, Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer;->tm:Lio/grpc/TransportManager;

    invoke-virtual {v1, v0}, Lio/grpc/TransportManager;->getTransport(Lio/grpc/EquivalentAddressGroup;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public shutdown()V
    .locals 3

    .prologue
    .line 161
    iget-object v1, p0, Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 162
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer;->closed:Z

    if-eqz v0, :cond_1

    .line 163
    monitor-exit v1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer;->closed:Z

    .line 166
    iget-object v0, p0, Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer;->interimTransport:Lio/grpc/TransportManager$InterimTransport;

    .line 167
    const/4 v2, 0x0

    iput-object v2, p0, Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer;->interimTransport:Lio/grpc/TransportManager$InterimTransport;

    .line 168
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    if-eqz v0, :cond_0

    .line 170
    sget-object v1, Lio/grpc/DummyLoadBalancerFactory$DummyLoadBalancer;->SHUTDOWN_STATUS:Lio/grpc/Status;

    invoke-interface {v0, v1}, Lio/grpc/TransportManager$InterimTransport;->closeWithError(Lio/grpc/Status;)V

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
