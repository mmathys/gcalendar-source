.class Lio/grpc/auth/ClientAuthInterceptor$1;
.super Lio/grpc/ClientInterceptors$CheckedForwardingClientCall;
.source "ClientAuthInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/auth/ClientAuthInterceptor;->interceptCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Lio/grpc/Channel;)Lio/grpc/ClientCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/ClientInterceptors$CheckedForwardingClientCall",
        "<TReqT;TRespT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/auth/ClientAuthInterceptor;

.field final synthetic val$method:Lio/grpc/MethodDescriptor;

.field final synthetic val$next:Lio/grpc/Channel;


# direct methods
.method constructor <init>(Lio/grpc/auth/ClientAuthInterceptor;Lio/grpc/ClientCall;Lio/grpc/Channel;Lio/grpc/MethodDescriptor;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lio/grpc/auth/ClientAuthInterceptor$1;->this$0:Lio/grpc/auth/ClientAuthInterceptor;

    iput-object p3, p0, Lio/grpc/auth/ClientAuthInterceptor$1;->val$next:Lio/grpc/Channel;

    iput-object p4, p0, Lio/grpc/auth/ClientAuthInterceptor$1;->val$method:Lio/grpc/MethodDescriptor;

    invoke-direct {p0, p2}, Lio/grpc/ClientInterceptors$CheckedForwardingClientCall;-><init>(Lio/grpc/ClientCall;)V

    return-void
.end method


# virtual methods
.method protected checkedStart(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall$Listener",
            "<TRespT;>;",
            "Lio/grpc/Metadata;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/StatusException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lio/grpc/auth/ClientAuthInterceptor$1;->this$0:Lio/grpc/auth/ClientAuthInterceptor;

    iget-object v1, p0, Lio/grpc/auth/ClientAuthInterceptor$1;->val$next:Lio/grpc/Channel;

    iget-object v2, p0, Lio/grpc/auth/ClientAuthInterceptor$1;->val$method:Lio/grpc/MethodDescriptor;

    # invokes: Lio/grpc/auth/ClientAuthInterceptor;->serviceUri(Lio/grpc/Channel;Lio/grpc/MethodDescriptor;)Ljava/net/URI;
    invoke-static {v0, v1, v2}, Lio/grpc/auth/ClientAuthInterceptor;->access$000(Lio/grpc/auth/ClientAuthInterceptor;Lio/grpc/Channel;Lio/grpc/MethodDescriptor;)Ljava/net/URI;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lio/grpc/auth/ClientAuthInterceptor$1;->this$0:Lio/grpc/auth/ClientAuthInterceptor;

    monitor-enter v1

    .line 96
    :try_start_0
    iget-object v2, p0, Lio/grpc/auth/ClientAuthInterceptor$1;->this$0:Lio/grpc/auth/ClientAuthInterceptor;

    # invokes: Lio/grpc/auth/ClientAuthInterceptor;->getRequestMetadata(Ljava/net/URI;)Ljava/util/Map;
    invoke-static {v2, v0}, Lio/grpc/auth/ClientAuthInterceptor;->access$100(Lio/grpc/auth/ClientAuthInterceptor;Ljava/net/URI;)Ljava/util/Map;

    move-result-object v0

    .line 97
    iget-object v2, p0, Lio/grpc/auth/ClientAuthInterceptor$1;->this$0:Lio/grpc/auth/ClientAuthInterceptor;

    # getter for: Lio/grpc/auth/ClientAuthInterceptor;->lastMetadata:Ljava/util/Map;
    invoke-static {v2}, Lio/grpc/auth/ClientAuthInterceptor;->access$200(Lio/grpc/auth/ClientAuthInterceptor;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lio/grpc/auth/ClientAuthInterceptor$1;->this$0:Lio/grpc/auth/ClientAuthInterceptor;

    # getter for: Lio/grpc/auth/ClientAuthInterceptor;->lastMetadata:Ljava/util/Map;
    invoke-static {v2}, Lio/grpc/auth/ClientAuthInterceptor;->access$200(Lio/grpc/auth/ClientAuthInterceptor;)Ljava/util/Map;

    move-result-object v2

    if-eq v2, v0, :cond_1

    .line 98
    :cond_0
    iget-object v2, p0, Lio/grpc/auth/ClientAuthInterceptor$1;->this$0:Lio/grpc/auth/ClientAuthInterceptor;

    # setter for: Lio/grpc/auth/ClientAuthInterceptor;->lastMetadata:Ljava/util/Map;
    invoke-static {v2, v0}, Lio/grpc/auth/ClientAuthInterceptor;->access$202(Lio/grpc/auth/ClientAuthInterceptor;Ljava/util/Map;)Ljava/util/Map;

    .line 99
    iget-object v0, p0, Lio/grpc/auth/ClientAuthInterceptor$1;->this$0:Lio/grpc/auth/ClientAuthInterceptor;

    iget-object v2, p0, Lio/grpc/auth/ClientAuthInterceptor$1;->this$0:Lio/grpc/auth/ClientAuthInterceptor;

    # getter for: Lio/grpc/auth/ClientAuthInterceptor;->lastMetadata:Ljava/util/Map;
    invoke-static {v2}, Lio/grpc/auth/ClientAuthInterceptor;->access$200(Lio/grpc/auth/ClientAuthInterceptor;)Ljava/util/Map;

    move-result-object v2

    # invokes: Lio/grpc/auth/ClientAuthInterceptor;->toHeaders(Ljava/util/Map;)Lio/grpc/Metadata;
    invoke-static {v2}, Lio/grpc/auth/ClientAuthInterceptor;->access$400(Ljava/util/Map;)Lio/grpc/Metadata;

    move-result-object v2

    # setter for: Lio/grpc/auth/ClientAuthInterceptor;->cached:Lio/grpc/Metadata;
    invoke-static {v0, v2}, Lio/grpc/auth/ClientAuthInterceptor;->access$302(Lio/grpc/auth/ClientAuthInterceptor;Lio/grpc/Metadata;)Lio/grpc/Metadata;

    .line 101
    :cond_1
    iget-object v0, p0, Lio/grpc/auth/ClientAuthInterceptor$1;->this$0:Lio/grpc/auth/ClientAuthInterceptor;

    # getter for: Lio/grpc/auth/ClientAuthInterceptor;->cached:Lio/grpc/Metadata;
    invoke-static {v0}, Lio/grpc/auth/ClientAuthInterceptor;->access$300(Lio/grpc/auth/ClientAuthInterceptor;)Lio/grpc/Metadata;

    move-result-object v0

    .line 102
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    invoke-virtual {p2, v0}, Lio/grpc/Metadata;->merge(Lio/grpc/Metadata;)V

    .line 104
    invoke-virtual {p0}, Lio/grpc/auth/ClientAuthInterceptor$1;->delegate()Lio/grpc/ClientCall;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/ClientCall;->start(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V

    .line 105
    return-void

    .line 102
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
