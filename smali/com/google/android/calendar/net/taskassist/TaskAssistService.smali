.class public Lcom/google/android/calendar/net/taskassist/TaskAssistService;
.super Ljava/lang/Object;
.source "TaskAssistService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAccountEmail:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mTaskAssistStub:Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$MyndServiceBlockingStub;

.field private final mUseTaskAssistStaging:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/google/android/calendar/net/taskassist/TaskAssistService;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/net/taskassist/TaskAssistService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistService;->mUseTaskAssistStaging:Z

    .line 68
    iput-object p1, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistService;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistService;->mAccountEmail:Ljava/lang/String;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/calendar/net/taskassist/TaskAssistService;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private declared-synchronized maybeInitGrpcStub()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/calendar/net/exceptions/GrpcServiceException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 134
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistService;->mTaskAssistStub:Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$MyndServiceBlockingStub;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 197
    :goto_0
    monitor-exit p0

    return-void

    .line 141
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/ConscryptUtils;->installSecurityProvider(Landroid/content/Context;)V
    :try_end_1
    .catch Lcom/google/android/syncadapters/calendar/ConscryptInstallationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    :try_start_2
    const-string v0, "taskassist-pa.googleapis.com"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    const/16 v1, 0x1bb

    .line 160
    :try_start_3
    const-string v3, "TLS"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    .line 161
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 163
    invoke-static {v0, v1}, Lio/grpc/okhttp/OkHttpChannelBuilder;->forAddress(Ljava/lang/String;I)Lio/grpc/okhttp/OkHttpChannelBuilder;

    move-result-object v0

    .line 164
    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/okhttp/OkHttpChannelBuilder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lio/grpc/okhttp/OkHttpChannelBuilder;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Lio/grpc/okhttp/OkHttpChannelBuilder;->build()Lio/grpc/internal/ManagedChannelImpl;
    :try_end_3
    .catch Ljava/security/KeyManagementException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    .line 172
    :try_start_4
    iget-object v0, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistService;->mAccountEmail:Ljava/lang/String;

    const-string v4, "oauth2:https://www.googleapis.com/auth/taskassist.readonly"

    invoke-static {v0, v1, v4}, Lcom/google/android/gms/auth/GoogleAuthUtil;->getToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Lcom/google/android/gms/auth/UserRecoverableAuthException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/google/android/gms/auth/GoogleAuthException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    .line 187
    :goto_1
    if-nez v0, :cond_1

    .line 188
    :try_start_5
    new-instance v0, Lcom/google/android/calendar/net/exceptions/GrpcServiceException;

    const-string v1, "Error fetching User Token for Task Assist API"

    invoke-direct {v0, v1}, Lcom/google/android/calendar/net/exceptions/GrpcServiceException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 142
    :catch_0
    move-exception v0

    .line 144
    :try_start_6
    new-instance v1, Lcom/google/android/calendar/net/exceptions/GrpcServiceException;

    const-string v2, "Failed to install security provider"

    invoke-direct {v1, v2, v0}, Lcom/google/android/calendar/net/exceptions/GrpcServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 166
    :catch_1
    move-exception v0

    .line 167
    :goto_2
    new-instance v1, Lcom/google/android/calendar/net/exceptions/GrpcServiceException;

    const-string v2, "Failed to initialize gRPC Channel"

    invoke-direct {v1, v2, v0}, Lcom/google/android/calendar/net/exceptions/GrpcServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 174
    :catch_2
    move-exception v0

    move-object v1, v0

    .line 175
    iget-object v0, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistService;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v4, Lcom/google/android/calendar/net/taskassist/TaskAssistService$1;

    invoke-direct {v4, p0, v1}, Lcom/google/android/calendar/net/taskassist/TaskAssistService$1;-><init>(Lcom/google/android/calendar/net/taskassist/TaskAssistService;Lcom/google/android/gms/auth/UserRecoverableAuthException;)V

    invoke-virtual {v0, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    move-object v0, v2

    .line 185
    goto :goto_1

    .line 183
    :catch_3
    move-exception v0

    .line 184
    :goto_3
    sget-object v1, Lcom/google/android/calendar/net/taskassist/TaskAssistService;->TAG:Ljava/lang/String;

    const-string v4, "Error getting user token for suggestions"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v2

    goto :goto_1

    .line 191
    :cond_1
    new-instance v1, Lcom/google/auth/oauth2/GoogleCredentials;

    new-instance v2, Lcom/google/auth/oauth2/AccessToken;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v4}, Lcom/google/auth/oauth2/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    invoke-direct {v1, v2}, Lcom/google/auth/oauth2/GoogleCredentials;-><init>(Lcom/google/auth/oauth2/AccessToken;)V

    .line 192
    new-instance v0, Lio/grpc/auth/ClientAuthInterceptor;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, v2}, Lio/grpc/auth/ClientAuthInterceptor;-><init>(Lcom/google/auth/Credentials;Ljava/util/concurrent/Executor;)V

    .line 194
    const/4 v1, 0x1

    new-array v1, v1, [Lio/grpc/ClientInterceptor;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v3, v1}, Lio/grpc/ClientInterceptors;->intercept(Lio/grpc/Channel;[Lio/grpc/ClientInterceptor;)Lio/grpc/Channel;

    move-result-object v0

    .line 196
    invoke-static {v0}, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc;->newBlockingStub(Lio/grpc/Channel;)Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$MyndServiceBlockingStub;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistService;->mTaskAssistStub:Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$MyndServiceBlockingStub;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 183
    :catch_4
    move-exception v0

    goto :goto_3

    .line 166
    :catch_5
    move-exception v0

    goto :goto_2
.end method

.method private declared-synchronized tryResetStubAfterRuntimeException(Ljava/lang/RuntimeException;)V
    .locals 1

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_0

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistService;->mTaskAssistStub:Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$MyndServiceBlockingStub;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :cond_0
    monitor-exit p0

    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public assist(Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;)Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/calendar/net/exceptions/GrpcServiceException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/google/android/calendar/net/taskassist/TaskAssistService;->maybeInitGrpcStub()V

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistService;->mTaskAssistStub:Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$MyndServiceBlockingStub;

    invoke-virtual {v0, p1}, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$MyndServiceBlockingStub;->assist(Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;)Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceResponse;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    invoke-direct {p0, v0}, Lcom/google/android/calendar/net/taskassist/TaskAssistService;->tryResetStubAfterRuntimeException(Ljava/lang/RuntimeException;)V

    .line 90
    new-instance v1, Lcom/google/android/calendar/net/exceptions/GrpcServiceException;

    const-string v2, "gRPC Error on TaskAssist.Assist()"

    invoke-direct {v1, v2, v0}, Lcom/google/android/calendar/net/exceptions/GrpcServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAccountEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistService;->mAccountEmail:Ljava/lang/String;

    return-object v0
.end method

.method public log(Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;)Lcom/google/personalization/assist/annotate/api/nano/LoggingResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/calendar/net/exceptions/GrpcServiceException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/google/android/calendar/net/taskassist/TaskAssistService;->maybeInitGrpcStub()V

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistService;->mTaskAssistStub:Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$MyndServiceBlockingStub;

    invoke-virtual {v0, p1}, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$MyndServiceBlockingStub;->log(Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;)Lcom/google/personalization/assist/annotate/api/nano/LoggingResponse;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    invoke-direct {p0, v0}, Lcom/google/android/calendar/net/taskassist/TaskAssistService;->tryResetStubAfterRuntimeException(Ljava/lang/RuntimeException;)V

    .line 111
    new-instance v1, Lcom/google/android/calendar/net/exceptions/GrpcServiceException;

    const-string v2, "gRPC Error on TaskAssist.Log()"

    invoke-direct {v1, v2, v0}, Lcom/google/android/calendar/net/exceptions/GrpcServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public schedule(Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;)Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/calendar/net/exceptions/GrpcServiceException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/google/android/calendar/net/taskassist/TaskAssistService;->maybeInitGrpcStub()V

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistService;->mTaskAssistStub:Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$MyndServiceBlockingStub;

    invoke-virtual {v0, p1}, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$MyndServiceBlockingStub;->schedule(Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;)Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleResponse;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    invoke-direct {p0, v0}, Lcom/google/android/calendar/net/taskassist/TaskAssistService;->tryResetStubAfterRuntimeException(Ljava/lang/RuntimeException;)V

    .line 101
    new-instance v1, Lcom/google/android/calendar/net/exceptions/GrpcServiceException;

    const-string v2, "gRPC Error on TaskAssist.Schedule()"

    invoke-direct {v1, v2, v0}, Lcom/google/android/calendar/net/exceptions/GrpcServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public suggest(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;)Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/calendar/net/exceptions/GrpcServiceException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/android/calendar/net/taskassist/TaskAssistService;->maybeInitGrpcStub()V

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistService;->mTaskAssistStub:Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$MyndServiceBlockingStub;

    invoke-virtual {v0, p1}, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$MyndServiceBlockingStub;->suggest(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;)Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    invoke-direct {p0, v0}, Lcom/google/android/calendar/net/taskassist/TaskAssistService;->tryResetStubAfterRuntimeException(Ljava/lang/RuntimeException;)V

    .line 79
    new-instance v1, Lcom/google/android/calendar/net/exceptions/GrpcServiceException;

    const-string v2, "gRPC Error on TaskAssist.Suggest()"

    invoke-direct {v1, v2, v0}, Lcom/google/android/calendar/net/exceptions/GrpcServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
