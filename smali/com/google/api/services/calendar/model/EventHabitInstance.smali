.class public final Lcom/google/api/services/calendar/model/EventHabitInstance;
.super Lcom/google/api/client/json/GenericJson;
.source "EventHabitInstance.java"


# instance fields
.field private data:Lcom/google/api/services/calendar/model/HabitInstanceData;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private parentId:Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventHabitInstance;->clone()Lcom/google/api/services/calendar/model/EventHabitInstance;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventHabitInstance;->clone()Lcom/google/api/services/calendar/model/EventHabitInstance;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/calendar/model/EventHabitInstance;
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/EventHabitInstance;

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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventHabitInstance;->clone()Lcom/google/api/services/calendar/model/EventHabitInstance;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/google/api/services/calendar/model/HabitInstanceData;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/api/services/calendar/model/EventHabitInstance;->data:Lcom/google/api/services/calendar/model/HabitInstanceData;

    return-object v0
.end method

.method public getParentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/api/services/calendar/model/EventHabitInstance;->parentId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/EventHabitInstance;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/EventHabitInstance;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/EventHabitInstance;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/EventHabitInstance;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/EventHabitInstance;
    .locals 1

    .prologue
    .line 82
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/EventHabitInstance;

    return-object v0
.end method

.method public setData(Lcom/google/api/services/calendar/model/HabitInstanceData;)Lcom/google/api/services/calendar/model/EventHabitInstance;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/api/services/calendar/model/EventHabitInstance;->data:Lcom/google/api/services/calendar/model/HabitInstanceData;

    .line 60
    return-object p0
.end method

.method public setParentId(Ljava/lang/String;)Lcom/google/api/services/calendar/model/EventHabitInstance;
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/api/services/calendar/model/EventHabitInstance;->parentId:Ljava/lang/String;

    .line 77
    return-object p0
.end method
