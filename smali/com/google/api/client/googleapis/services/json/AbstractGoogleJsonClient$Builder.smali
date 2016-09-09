.class public abstract Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
.super Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;
.source "AbstractGoogleJsonClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method protected constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/HttpRequestInitializer;Z)V
    .locals 6

    .prologue
    .line 74
    new-instance v1, Lcom/google/api/client/json/JsonObjectParser$Builder;

    invoke-direct {v1, p2}, Lcom/google/api/client/json/JsonObjectParser$Builder;-><init>(Lcom/google/api/client/json/JsonFactory;)V

    if-eqz p6, :cond_0

    .line 76
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "data"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "error"

    aput-object v3, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 75
    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/api/client/json/JsonObjectParser$Builder;->setWrapperKeys(Ljava/util/Collection;)Lcom/google/api/client/json/JsonObjectParser$Builder;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/google/api/client/json/JsonObjectParser$Builder;->build()Lcom/google/api/client/json/JsonObjectParser;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v5, p5

    .line 74
    invoke-direct/range {v0 .. v5}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;-><init>(Lcom/google/api/client/http/HttpTransport;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/util/ObjectParser;Lcom/google/api/client/http/HttpRequestInitializer;)V

    .line 78
    return-void

    .line 76
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic setApplicationName(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setApplicationName(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
    .locals 1

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    return-object v0
.end method

.method public bridge synthetic setRootUrl(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setRootUrl(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setRootUrl(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
    .locals 1

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;->setRootUrl(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    return-object v0
.end method

.method public bridge synthetic setServicePath(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setServicePath(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setServicePath(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
    .locals 1

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;->setServicePath(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    return-object v0
.end method
