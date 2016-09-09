.class Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;
.super Lio/grpc/internal/ForwardingConnectionClientTransport;
.source "CallCredentialsApplyingTransportFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/CallCredentialsApplyingTransportFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallCredentialsApplyingTransport"
.end annotation


# instance fields
.field private final authority:Ljava/lang/String;

.field private final delegate:Lio/grpc/internal/ConnectionClientTransport;

.field final synthetic this$0:Lio/grpc/internal/CallCredentialsApplyingTransportFactory;


# direct methods
.method constructor <init>(Lio/grpc/internal/CallCredentialsApplyingTransportFactory;Lio/grpc/internal/ConnectionClientTransport;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 74
    iput-object p1, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->this$0:Lio/grpc/internal/CallCredentialsApplyingTransportFactory;

    invoke-direct {p0}, Lio/grpc/internal/ForwardingConnectionClientTransport;-><init>()V

    .line 75
    const-string v0, "delegate"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ConnectionClientTransport;

    iput-object v0, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->delegate:Lio/grpc/internal/ConnectionClientTransport;

    .line 76
    const-string v0, "authority"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->authority:Ljava/lang/String;

    .line 77
    return-void
.end method


# virtual methods
.method protected delegate()Lio/grpc/internal/ConnectionClientTransport;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->delegate:Lio/grpc/internal/ConnectionClientTransport;

    return-object v0
.end method

.method public newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;)Lio/grpc/internal/ClientStream;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor",
            "<**>;",
            "Lio/grpc/Metadata;",
            "Lio/grpc/CallOptions;",
            ")",
            "Lio/grpc/internal/ClientStream;"
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p3}, Lio/grpc/CallOptions;->getCredentials()Lio/grpc/CallCredentials;

    move-result-object v1

    .line 88
    if-eqz v1, :cond_1

    .line 89
    new-instance v2, Lio/grpc/internal/MetadataApplierImpl;

    iget-object v0, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->delegate:Lio/grpc/internal/ConnectionClientTransport;

    invoke-direct {v2, v0, p1, p2, p3}, Lio/grpc/internal/MetadataApplierImpl;-><init>(Lio/grpc/internal/ClientTransport;Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;)V

    .line 91
    invoke-static {}, Lio/grpc/Attributes;->newBuilder()Lio/grpc/Attributes$Builder;

    move-result-object v0

    sget-object v3, Lio/grpc/CallCredentials;->ATTR_AUTHORITY:Lio/grpc/Attributes$Key;

    iget-object v4, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->authority:Ljava/lang/String;

    .line 92
    invoke-virtual {v0, v3, v4}, Lio/grpc/Attributes$Builder;->set(Lio/grpc/Attributes$Key;Ljava/lang/Object;)Lio/grpc/Attributes$Builder;

    move-result-object v0

    sget-object v3, Lio/grpc/CallCredentials;->ATTR_SECURITY_LEVEL:Lio/grpc/Attributes$Key;

    sget-object v4, Lio/grpc/SecurityLevel;->NONE:Lio/grpc/SecurityLevel;

    .line 93
    invoke-virtual {v0, v3, v4}, Lio/grpc/Attributes$Builder;->set(Lio/grpc/Attributes$Key;Ljava/lang/Object;)Lio/grpc/Attributes$Builder;

    move-result-object v0

    iget-object v3, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->delegate:Lio/grpc/internal/ConnectionClientTransport;

    .line 94
    invoke-interface {v3}, Lio/grpc/internal/ConnectionClientTransport;->getAttrs()Lio/grpc/Attributes;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/grpc/Attributes$Builder;->setAll(Lio/grpc/Attributes;)Lio/grpc/Attributes$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {p3}, Lio/grpc/CallOptions;->getAuthority()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 96
    sget-object v3, Lio/grpc/CallCredentials;->ATTR_AUTHORITY:Lio/grpc/Attributes$Key;

    invoke-virtual {p3}, Lio/grpc/CallOptions;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lio/grpc/Attributes$Builder;->set(Lio/grpc/Attributes$Key;Ljava/lang/Object;)Lio/grpc/Attributes$Builder;

    .line 98
    :cond_0
    invoke-virtual {v0}, Lio/grpc/Attributes$Builder;->build()Lio/grpc/Attributes;

    move-result-object v3

    .line 99
    invoke-virtual {p3}, Lio/grpc/CallOptions;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v4, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->this$0:Lio/grpc/internal/CallCredentialsApplyingTransportFactory;

    # getter for: Lio/grpc/internal/CallCredentialsApplyingTransportFactory;->appExecutor:Ljava/util/concurrent/Executor;
    invoke-static {v4}, Lio/grpc/internal/CallCredentialsApplyingTransportFactory;->access$000(Lio/grpc/internal/CallCredentialsApplyingTransportFactory;)Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    .line 98
    invoke-interface {v1, p1, v3, v0, v2}, Lio/grpc/CallCredentials;->applyRequestMetadata(Lio/grpc/MethodDescriptor;Lio/grpc/Attributes;Ljava/util/concurrent/Executor;Lio/grpc/CallCredentials$MetadataApplier;)V

    .line 100
    invoke-virtual {v2}, Lio/grpc/internal/MetadataApplierImpl;->returnStream()Lio/grpc/internal/ClientStream;

    move-result-object v0

    .line 102
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->delegate:Lio/grpc/internal/ConnectionClientTransport;

    invoke-interface {v0, p1, p2, p3}, Lio/grpc/internal/ConnectionClientTransport;->newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;)Lio/grpc/internal/ClientStream;

    move-result-object v0

    goto :goto_0
.end method
