.class public abstract Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;
.super Ljava/lang/Object;
.source "AbstractGoogleClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/googleapis/services/AbstractGoogleClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# instance fields
.field applicationName:Ljava/lang/String;

.field googleClientRequestInitializer:Lcom/google/api/client/googleapis/services/GoogleClientRequestInitializer;

.field httpRequestInitializer:Lcom/google/api/client/http/HttpRequestInitializer;

.field final objectParser:Lcom/google/api/client/util/ObjectParser;

.field rootUrl:Ljava/lang/String;

.field servicePath:Ljava/lang/String;

.field suppressPatternChecks:Z

.field suppressRequiredParameterChecks:Z

.field final transport:Lcom/google/api/client/http/HttpTransport;


# direct methods
.method protected constructor <init>(Lcom/google/api/client/http/HttpTransport;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/util/ObjectParser;Lcom/google/api/client/http/HttpRequestInitializer;)V
    .locals 1

    .prologue
    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/HttpTransport;

    iput-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;->transport:Lcom/google/api/client/http/HttpTransport;

    .line 334
    iput-object p4, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;->objectParser:Lcom/google/api/client/util/ObjectParser;

    .line 335
    invoke-virtual {p0, p2}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;->setRootUrl(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;

    .line 336
    invoke-virtual {p0, p3}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;->setServicePath(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;

    .line 337
    iput-object p5, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;->httpRequestInitializer:Lcom/google/api/client/http/HttpRequestInitializer;

    .line 338
    return-void
.end method


# virtual methods
.method public setApplicationName(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;
    .locals 0

    .prologue
    .line 480
    iput-object p1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;->applicationName:Ljava/lang/String;

    .line 481
    return-object p0
.end method

.method public setRootUrl(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;
    .locals 1

    .prologue
    .line 385
    invoke-static {p1}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->normalizeRootUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;->rootUrl:Ljava/lang/String;

    .line 386
    return-object p0
.end method

.method public setServicePath(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;
    .locals 1

    .prologue
    .line 421
    invoke-static {p1}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->normalizeServicePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;->servicePath:Ljava/lang/String;

    .line 422
    return-object p0
.end method
