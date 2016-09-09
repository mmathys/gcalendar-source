.class public abstract Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
.super Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
.source "AbstractGoogleJsonClientRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final jsonContent:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 57
    if-nez p4, :cond_0

    move-object v4, v0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;-><init>(Lcom/google/api/client/googleapis/services/AbstractGoogleClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/HttpContent;Ljava/lang/Class;)V

    .line 61
    iput-object p4, p0, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;->jsonContent:Ljava/lang/Object;

    .line 62
    return-void

    .line 59
    :cond_0
    new-instance v1, Lcom/google/api/client/http/json/JsonHttpContent;

    .line 58
    invoke-virtual {p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient;->getJsonFactory()Lcom/google/api/client/json/JsonFactory;

    move-result-object v2

    invoke-direct {v1, v2, p4}, Lcom/google/api/client/http/json/JsonHttpContent;-><init>(Lcom/google/api/client/json/JsonFactory;Ljava/lang/Object;)V

    .line 59
    invoke-virtual {p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient;->getObjectParser()Lcom/google/api/client/json/JsonObjectParser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/client/json/JsonObjectParser;->getWrapperKeys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/google/api/client/http/json/JsonHttpContent;->setWrapperKey(Ljava/lang/String;)Lcom/google/api/client/http/json/JsonHttpContent;

    move-result-object v4

    goto :goto_0

    .line 60
    :cond_1
    const-string v0, "data"

    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic getAbstractGoogleClient()Lcom/google/api/client/googleapis/services/AbstractGoogleClient;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;->getAbstractGoogleClient()Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient;

    move-result-object v0

    return-object v0
.end method

.method public getAbstractGoogleClient()Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient;
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->getAbstractGoogleClient()Lcom/google/api/client/googleapis/services/AbstractGoogleClient;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient;

    return-object v0
.end method

.method protected newExceptionOnError(Lcom/google/api/client/http/HttpResponse;)Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;->getAbstractGoogleClient()Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient;->getJsonFactory()Lcom/google/api/client/json/JsonFactory;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->from(Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpResponse;)Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newExceptionOnError(Lcom/google/api/client/http/HttpResponse;)Ljava/io/IOException;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;->newExceptionOnError(Lcom/google/api/client/http/HttpResponse;)Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 123
    invoke-super {p0, p1, p2}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;

    move-result-object v0

    return-object v0
.end method
