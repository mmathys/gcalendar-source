.class public final Lcom/google/api/services/calendar/model/PrivateEventData;
.super Lcom/google/api/client/json/GenericJson;
.source "PrivateEventData.java"


# instance fields
.field private annotations:Lcom/google/api/services/calendar/model/Annotations;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private smartMailInfo:Lcom/google/api/services/calendar/model/SmartMailInfo;
    .annotation runtime Lcom/google/api/client/util/Key;
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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/PrivateEventData;->clone()Lcom/google/api/services/calendar/model/PrivateEventData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/PrivateEventData;->clone()Lcom/google/api/services/calendar/model/PrivateEventData;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/calendar/model/PrivateEventData;
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/PrivateEventData;

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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/PrivateEventData;->clone()Lcom/google/api/services/calendar/model/PrivateEventData;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotations()Lcom/google/api/services/calendar/model/Annotations;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/api/services/calendar/model/PrivateEventData;->annotations:Lcom/google/api/services/calendar/model/Annotations;

    return-object v0
.end method

.method public getSmartMailInfo()Lcom/google/api/services/calendar/model/SmartMailInfo;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/api/services/calendar/model/PrivateEventData;->smartMailInfo:Lcom/google/api/services/calendar/model/SmartMailInfo;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/PrivateEventData;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/PrivateEventData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/PrivateEventData;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/PrivateEventData;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/PrivateEventData;
    .locals 1

    .prologue
    .line 76
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/PrivateEventData;

    return-object v0
.end method

.method public setAnnotations(Lcom/google/api/services/calendar/model/Annotations;)Lcom/google/api/services/calendar/model/PrivateEventData;
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/api/services/calendar/model/PrivateEventData;->annotations:Lcom/google/api/services/calendar/model/Annotations;

    .line 56
    return-object p0
.end method
