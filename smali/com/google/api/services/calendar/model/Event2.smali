.class public final Lcom/google/api/services/calendar/model/Event2;
.super Lcom/google/api/client/json/GenericJson;
.source "Event2.java"


# instance fields
.field private address:Lcom/google/api/services/calendar/model/SmartMailAddress;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private endTime:Lcom/google/api/services/calendar/model/Time;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private image:Lcom/google/api/services/calendar/model/Image;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private publisher:Lcom/google/api/services/calendar/model/Organization;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private startTime:Lcom/google/api/services/calendar/model/Time;
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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event2;->clone()Lcom/google/api/services/calendar/model/Event2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event2;->clone()Lcom/google/api/services/calendar/model/Event2;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/calendar/model/Event2;
    .locals 1

    .prologue
    .line 417
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/Event2;

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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event2;->clone()Lcom/google/api/services/calendar/model/Event2;

    move-result-object v0

    return-object v0
.end method

.method public getAddress()Lcom/google/api/services/calendar/model/SmartMailAddress;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Event2;->address:Lcom/google/api/services/calendar/model/SmartMailAddress;

    return-object v0
.end method

.method public getEndTime()Lcom/google/api/services/calendar/model/Time;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Event2;->endTime:Lcom/google/api/services/calendar/model/Time;

    return-object v0
.end method

.method public getImage()Lcom/google/api/services/calendar/model/Image;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Event2;->image:Lcom/google/api/services/calendar/model/Image;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Event2;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPublisher()Lcom/google/api/services/calendar/model/Organization;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Event2;->publisher:Lcom/google/api/services/calendar/model/Organization;

    return-object v0
.end method

.method public getStartTime()Lcom/google/api/services/calendar/model/Time;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Event2;->startTime:Lcom/google/api/services/calendar/model/Time;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/Event2;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/Event2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/Event2;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/Event2;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/Event2;
    .locals 1

    .prologue
    .line 412
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/Event2;

    return-object v0
.end method
