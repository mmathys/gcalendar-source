.class public final Lcom/google/api/services/calendar/model/HabitInstanceData;
.super Lcom/google/api/client/json/GenericJson;
.source "HabitInstanceData.java"


# instance fields
.field private status:Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/HabitInstanceData;->clone()Lcom/google/api/services/calendar/model/HabitInstanceData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/HabitInstanceData;->clone()Lcom/google/api/services/calendar/model/HabitInstanceData;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/calendar/model/HabitInstanceData;
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/HabitInstanceData;

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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/HabitInstanceData;->clone()Lcom/google/api/services/calendar/model/HabitInstanceData;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/api/services/calendar/model/HabitInstanceData;->status:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/HabitInstanceData;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/HabitInstanceData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/HabitInstanceData;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/HabitInstanceData;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/HabitInstanceData;
    .locals 1

    .prologue
    .line 76
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/HabitInstanceData;

    return-object v0
.end method

.method public setStatus(Ljava/lang/String;)Lcom/google/api/services/calendar/model/HabitInstanceData;
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/api/services/calendar/model/HabitInstanceData;->status:Ljava/lang/String;

    .line 56
    return-object p0
.end method
