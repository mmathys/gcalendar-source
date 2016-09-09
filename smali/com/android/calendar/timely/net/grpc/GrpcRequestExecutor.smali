.class public abstract Lcom/android/calendar/timely/net/grpc/GrpcRequestExecutor;
.super Ljava/lang/Object;
.source "GrpcRequestExecutor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lio/grpc/stub/AbstractStub;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAccountEmail:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field protected mStub:Lio/grpc/stub/AbstractStub;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/android/calendar/timely/net/grpc/GrpcRequestExecutor;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/net/grpc/GrpcRequestExecutor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/calendar/timely/net/grpc/GrpcRequestExecutor;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/android/calendar/timely/net/grpc/GrpcRequestExecutor;->mAccountEmail:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public call(Lcom/android/calendar/timely/net/grpc/GrpcCall;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<InputT:",
            "Ljava/lang/Object;",
            "OutputT:",
            "Ljava/lang/Object;",
            "ExceptionT:",
            "Ljava/lang/RuntimeException;",
            ">(",
            "Lcom/android/calendar/timely/net/grpc/GrpcCall",
            "<TInputT;TOutputT;TExceptionT;>;TInputT;)TOutputT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendar/timely/net/exceptions/GrpcRequestException;,
            Lcom/android/calendar/timely/net/exceptions/GrpcStubException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 104
    invoke-virtual {p0}, Lcom/android/calendar/timely/net/grpc/GrpcRequestExecutor;->initGrpcStub()V

    .line 105
    iget-object v1, p0, Lcom/android/calendar/timely/net/grpc/GrpcRequestExecutor;->mStub:Lio/grpc/stub/AbstractStub;

    if-nez v1, :cond_0

    .line 109
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {p1, p2}, Lcom/android/calendar/timely/net/grpc/GrpcCall;->call(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lio/grpc/StatusRuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v1

    .line 111
    invoke-virtual {v1}, Lio/grpc/StatusRuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/net/UnknownHostException;

    if-eqz v2, :cond_1

    .line 114
    iput-object v0, p0, Lcom/android/calendar/timely/net/grpc/GrpcRequestExecutor;->mStub:Lio/grpc/stub/AbstractStub;

    .line 116
    :cond_1
    new-instance v0, Lcom/android/calendar/timely/net/exceptions/GrpcRequestException;

    invoke-virtual {v1}, Lio/grpc/StatusRuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/android/calendar/timely/net/exceptions/GrpcRequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 117
    :catch_1
    move-exception v0

    .line 118
    const-string v1, "Exception calling the Grpc layer"

    .line 119
    sget-object v2, Lcom/android/calendar/timely/net/grpc/GrpcRequestExecutor;->TAG:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v1, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 120
    new-instance v2, Lcom/android/calendar/timely/net/exceptions/GrpcRequestException;

    invoke-direct {v2, v1, v0}, Lcom/android/calendar/timely/net/exceptions/GrpcRequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected abstract getAuthScope()Ljava/lang/String;
.end method

.method public getServerTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/android/calendar/timely/net/grpc/GrpcRequestExecutor;->getServerTargetProd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getServerTargetProd()Ljava/lang/String;
.end method

.method protected abstract getStub(Lio/grpc/Channel;)Lio/grpc/stub/AbstractStub;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/Channel;",
            ")TT;"
        }
    .end annotation
.end method

.method protected declared-synchronized initGrpcStub()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendar/timely/net/exceptions/GrpcStubException;
        }
    .end annotation

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/timely/net/grpc/GrpcRequestExecutor;->mStub:Lio/grpc/stub/AbstractStub;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 99
    :goto_0
    monitor-exit p0

    return-void

    .line 61
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/calendar/timely/net/grpc/GrpcRequestExecutor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/ConscryptUtils;->installSecurityProvider(Landroid/content/Context;)V
    :try_end_1
    .catch Lcom/google/android/syncadapters/calendar/ConscryptInstallationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    :try_start_2
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 70
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/calendar/timely/net/grpc/GrpcRequestExecutor;->getServerTarget()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpChannelBuilder;->forTarget(Ljava/lang/String;)Lio/grpc/okhttp/OkHttpChannelBuilder;

    move-result-object v1

    .line 73
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/grpc/okhttp/OkHttpChannelBuilder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lio/grpc/okhttp/OkHttpChannelBuilder;

    move-result-object v0

    const-string v1, "Calendar-Android(versionCode=%d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/calendar/timely/net/grpc/GrpcRequestExecutor;->mContext:Landroid/content/Context;

    .line 74
    invoke-static {v4}, Lcom/android/calendar/Utils;->getVersionCode(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/okhttp/OkHttpChannelBuilder;->userAgent(Ljava/lang/String;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    check-cast v0, Lio/grpc/okhttp/OkHttpChannelBuilder;

    .line 75
    invoke-virtual {v0}, Lio/grpc/okhttp/OkHttpChannelBuilder;->build()Lio/grpc/internal/ManagedChannelImpl;
    :try_end_2
    .catch Ljava/security/KeyManagementException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 82
    :try_start_3
    iget-object v1, p0, Lcom/android/calendar/timely/net/grpc/GrpcRequestExecutor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/calendar/timely/net/grpc/GrpcRequestExecutor;->mAccountEmail:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/calendar/timely/net/grpc/GrpcRequestExecutor;->getAuthScope()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/auth/GoogleAuthUtil;->getToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Lcom/google/android/gms/auth/UserRecoverableAuthException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/google/android/gms/auth/GoogleAuthException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    .line 89
    if-nez v1, :cond_1

    .line 90
    :try_start_4
    new-instance v0, Lcom/android/calendar/timely/net/exceptions/GrpcStubException;

    const-string v1, "Error fetching User Token for Grpc API"

    invoke-direct {v0, v1}, Lcom/android/calendar/timely/net/exceptions/GrpcStubException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 62
    :catch_0
    move-exception v0

    .line 64
    :try_start_5
    new-instance v1, Lcom/android/calendar/timely/net/exceptions/GrpcStubException;

    const-string v2, "Failed to install security provider"

    invoke-direct {v1, v2, v0}, Lcom/android/calendar/timely/net/exceptions/GrpcStubException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 76
    :catch_1
    move-exception v0

    .line 77
    :goto_1
    new-instance v1, Lcom/android/calendar/timely/net/exceptions/GrpcStubException;

    const-string v2, "Failed to initialize gRPC Channel"

    invoke-direct {v1, v2, v0}, Lcom/android/calendar/timely/net/exceptions/GrpcStubException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 83
    :catch_2
    move-exception v0

    .line 84
    new-instance v1, Lcom/android/calendar/timely/net/exceptions/GrpcStubException;

    const-string v2, "Failed to retrieve user token"

    invoke-direct {v1, v2, v0}, Lcom/android/calendar/timely/net/exceptions/GrpcStubException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 85
    :catch_3
    move-exception v0

    .line 86
    :goto_2
    new-instance v1, Lcom/android/calendar/timely/net/exceptions/GrpcStubException;

    const-string v2, "Failed to retrieve user token"

    invoke-direct {v1, v2, v0}, Lcom/android/calendar/timely/net/exceptions/GrpcStubException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 93
    :cond_1
    new-instance v2, Lcom/google/auth/oauth2/GoogleCredentials;

    new-instance v3, Lcom/google/auth/oauth2/AccessToken;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/google/auth/oauth2/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    invoke-direct {v2, v3}, Lcom/google/auth/oauth2/GoogleCredentials;-><init>(Lcom/google/auth/oauth2/AccessToken;)V

    .line 94
    new-instance v1, Lio/grpc/auth/ClientAuthInterceptor;

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-direct {v1, v2, v3}, Lio/grpc/auth/ClientAuthInterceptor;-><init>(Lcom/google/auth/Credentials;Ljava/util/concurrent/Executor;)V

    .line 96
    const/4 v2, 0x1

    new-array v2, v2, [Lio/grpc/ClientInterceptor;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lio/grpc/ClientInterceptors;->intercept(Lio/grpc/Channel;[Lio/grpc/ClientInterceptor;)Lio/grpc/Channel;

    move-result-object v0

    .line 98
    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/net/grpc/GrpcRequestExecutor;->getStub(Lio/grpc/Channel;)Lio/grpc/stub/AbstractStub;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/net/grpc/GrpcRequestExecutor;->mStub:Lio/grpc/stub/AbstractStub;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 85
    :catch_4
    move-exception v0

    goto :goto_2

    .line 76
    :catch_5
    move-exception v0

    goto :goto_1
.end method
