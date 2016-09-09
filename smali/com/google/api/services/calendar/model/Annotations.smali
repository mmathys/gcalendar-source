.class public final Lcom/google/api/services/calendar/model/Annotations;
.super Lcom/google/api/client/json/GenericJson;
.source "Annotations.java"


# instance fields
.field private titleContactAnnotations:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/TitleContactAnnotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Annotations;->clone()Lcom/google/api/services/calendar/model/Annotations;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Annotations;->clone()Lcom/google/api/services/calendar/model/Annotations;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/calendar/model/Annotations;
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/Annotations;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Annotations;->clone()Lcom/google/api/services/calendar/model/Annotations;

    move-result-object v0

    return-object v0
.end method

.method public getTitleContactAnnotations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/TitleContactAnnotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Annotations;->titleContactAnnotations:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/Annotations;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/Annotations;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/Annotations;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/Annotations;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/Annotations;
    .locals 1

    .prologue
    .line 55
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/Annotations;

    return-object v0
.end method

.method public setTitleContactAnnotations(Ljava/util/List;)Lcom/google/api/services/calendar/model/Annotations;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/TitleContactAnnotation;",
            ">;)",
            "Lcom/google/api/services/calendar/model/Annotations;"
        }
    .end annotation

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Annotations;->titleContactAnnotations:Ljava/util/List;

    .line 50
    return-object p0
.end method
