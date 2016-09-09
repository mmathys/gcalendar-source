.class public final Lcom/google/api/services/calendar/model/Habit;
.super Lcom/google/api/client/json/GenericJson;
.source "Habit.java"


# instance fields
.field private deleted:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private etag:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private habitData:Lcom/google/api/services/calendar/model/HabitData;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private id:Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Habit;->clone()Lcom/google/api/services/calendar/model/Habit;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Habit;->clone()Lcom/google/api/services/calendar/model/Habit;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/calendar/model/Habit;
    .locals 1

    .prologue
    .line 210
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/Habit;

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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Habit;->clone()Lcom/google/api/services/calendar/model/Habit;

    move-result-object v0

    return-object v0
.end method

.method public getDeleted()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Habit;->deleted:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Habit;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getHabitData()Lcom/google/api/services/calendar/model/HabitData;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Habit;->habitData:Lcom/google/api/services/calendar/model/HabitData;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Habit;->id:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/Habit;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/Habit;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/Habit;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/Habit;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/Habit;
    .locals 1

    .prologue
    .line 205
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/Habit;

    return-object v0
.end method

.method public setDeleted(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/model/Habit;
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Habit;->deleted:Ljava/lang/Boolean;

    .line 88
    return-object p0
.end method

.method public setEtag(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Habit;
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Habit;->etag:Ljava/lang/String;

    .line 132
    return-object p0
.end method

.method public setHabitData(Lcom/google/api/services/calendar/model/HabitData;)Lcom/google/api/services/calendar/model/Habit;
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Habit;->habitData:Lcom/google/api/services/calendar/model/HabitData;

    .line 149
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Habit;
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Habit;->id:Ljava/lang/String;

    .line 166
    return-object p0
.end method
