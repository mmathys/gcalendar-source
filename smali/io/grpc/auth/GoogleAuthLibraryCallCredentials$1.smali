.class Lio/grpc/auth/GoogleAuthLibraryCallCredentials$1;
.super Ljava/lang/Object;
.source "GoogleAuthLibraryCallCredentials.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/auth/GoogleAuthLibraryCallCredentials;->applyRequestMetadata(Lio/grpc/MethodDescriptor;Lio/grpc/Attributes;Ljava/util/concurrent/Executor;Lio/grpc/CallCredentials$MetadataApplier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/auth/GoogleAuthLibraryCallCredentials;

.field final synthetic val$applier:Lio/grpc/CallCredentials$MetadataApplier;

.field final synthetic val$uri:Ljava/net/URI;


# direct methods
.method constructor <init>(Lio/grpc/auth/GoogleAuthLibraryCallCredentials;Ljava/net/URI;Lio/grpc/CallCredentials$MetadataApplier;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lio/grpc/auth/GoogleAuthLibraryCallCredentials$1;->this$0:Lio/grpc/auth/GoogleAuthLibraryCallCredentials;

    iput-object p2, p0, Lio/grpc/auth/GoogleAuthLibraryCallCredentials$1;->val$uri:Ljava/net/URI;

    iput-object p3, p0, Lio/grpc/auth/GoogleAuthLibraryCallCredentials$1;->val$applier:Lio/grpc/CallCredentials$MetadataApplier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 113
    :try_start_0
    iget-object v0, p0, Lio/grpc/auth/GoogleAuthLibraryCallCredentials$1;->this$0:Lio/grpc/auth/GoogleAuthLibraryCallCredentials;

    iget-object v0, v0, Lio/grpc/auth/GoogleAuthLibraryCallCredentials;->creds:Lcom/google/auth/Credentials;

    iget-object v1, p0, Lio/grpc/auth/GoogleAuthLibraryCallCredentials$1;->val$uri:Ljava/net/URI;

    invoke-virtual {v0, v1}, Lcom/google/auth/Credentials;->getRequestMetadata(Ljava/net/URI;)Ljava/util/Map;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lio/grpc/auth/GoogleAuthLibraryCallCredentials$1;->this$0:Lio/grpc/auth/GoogleAuthLibraryCallCredentials;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :try_start_1
    iget-object v2, p0, Lio/grpc/auth/GoogleAuthLibraryCallCredentials$1;->this$0:Lio/grpc/auth/GoogleAuthLibraryCallCredentials;

    # getter for: Lio/grpc/auth/GoogleAuthLibraryCallCredentials;->lastMetadata:Ljava/util/Map;
    invoke-static {v2}, Lio/grpc/auth/GoogleAuthLibraryCallCredentials;->access$000(Lio/grpc/auth/GoogleAuthLibraryCallCredentials;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lio/grpc/auth/GoogleAuthLibraryCallCredentials$1;->this$0:Lio/grpc/auth/GoogleAuthLibraryCallCredentials;

    # getter for: Lio/grpc/auth/GoogleAuthLibraryCallCredentials;->lastMetadata:Ljava/util/Map;
    invoke-static {v2}, Lio/grpc/auth/GoogleAuthLibraryCallCredentials;->access$000(Lio/grpc/auth/GoogleAuthLibraryCallCredentials;)Ljava/util/Map;

    move-result-object v2

    if-eq v2, v0, :cond_1

    .line 120
    :cond_0
    iget-object v2, p0, Lio/grpc/auth/GoogleAuthLibraryCallCredentials$1;->this$0:Lio/grpc/auth/GoogleAuthLibraryCallCredentials;

    # setter for: Lio/grpc/auth/GoogleAuthLibraryCallCredentials;->lastMetadata:Ljava/util/Map;
    invoke-static {v2, v0}, Lio/grpc/auth/GoogleAuthLibraryCallCredentials;->access$002(Lio/grpc/auth/GoogleAuthLibraryCallCredentials;Ljava/util/Map;)Ljava/util/Map;

    .line 121
    iget-object v2, p0, Lio/grpc/auth/GoogleAuthLibraryCallCredentials$1;->this$0:Lio/grpc/auth/GoogleAuthLibraryCallCredentials;

    # invokes: Lio/grpc/auth/GoogleAuthLibraryCallCredentials;->toHeaders(Ljava/util/Map;)Lio/grpc/Metadata;
    invoke-static {v0}, Lio/grpc/auth/GoogleAuthLibraryCallCredentials;->access$200(Ljava/util/Map;)Lio/grpc/Metadata;

    move-result-object v0

    # setter for: Lio/grpc/auth/GoogleAuthLibraryCallCredentials;->lastHeaders:Lio/grpc/Metadata;
    invoke-static {v2, v0}, Lio/grpc/auth/GoogleAuthLibraryCallCredentials;->access$102(Lio/grpc/auth/GoogleAuthLibraryCallCredentials;Lio/grpc/Metadata;)Lio/grpc/Metadata;

    .line 123
    :cond_1
    iget-object v0, p0, Lio/grpc/auth/GoogleAuthLibraryCallCredentials$1;->this$0:Lio/grpc/auth/GoogleAuthLibraryCallCredentials;

    # getter for: Lio/grpc/auth/GoogleAuthLibraryCallCredentials;->lastHeaders:Lio/grpc/Metadata;
    invoke-static {v0}, Lio/grpc/auth/GoogleAuthLibraryCallCredentials;->access$100(Lio/grpc/auth/GoogleAuthLibraryCallCredentials;)Lio/grpc/Metadata;

    move-result-object v0

    .line 124
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    :try_start_2
    iget-object v1, p0, Lio/grpc/auth/GoogleAuthLibraryCallCredentials$1;->val$applier:Lio/grpc/CallCredentials$MetadataApplier;

    invoke-interface {v1, v0}, Lio/grpc/CallCredentials$MetadataApplier;->apply(Lio/grpc/Metadata;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 129
    :goto_0
    return-void

    .line 124
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    iget-object v1, p0, Lio/grpc/auth/GoogleAuthLibraryCallCredentials$1;->val$applier:Lio/grpc/CallCredentials$MetadataApplier;

    sget-object v2, Lio/grpc/Status;->UNAUTHENTICATED:Lio/grpc/Status;

    invoke-virtual {v2, v0}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v0

    invoke-interface {v1, v0}, Lio/grpc/CallCredentials$MetadataApplier;->fail(Lio/grpc/Status;)V

    goto :goto_0
.end method
