.class public final Lcom/google/api/services/calendar/model/ReminderInstance;
.super Lcom/google/api/client/json/GenericJson;
.source "ReminderInstance.java"


# instance fields
.field private method:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private minutes:Ljava/lang/Integer;
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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/ReminderInstance;->clone()Lcom/google/api/services/calendar/model/ReminderInstance;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/ReminderInstance;->clone()Lcom/google/api/services/calendar/model/ReminderInstance;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/calendar/model/ReminderInstance;
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/ReminderInstance;

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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/ReminderInstance;->clone()Lcom/google/api/services/calendar/model/ReminderInstance;

    move-result-object v0

    return-object v0
.end method

.method public getMinutes()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/api/services/calendar/model/ReminderInstance;->minutes:Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/ReminderInstance;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/ReminderInstance;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/ReminderInstance;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/ReminderInstance;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/ReminderInstance;
    .locals 1

    .prologue
    .line 76
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/ReminderInstance;

    return-object v0
.end method

.method public setMethod(Ljava/lang/String;)Lcom/google/api/services/calendar/model/ReminderInstance;
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/api/services/calendar/model/ReminderInstance;->method:Ljava/lang/String;

    .line 56
    return-object p0
.end method

.method public setMinutes(Ljava/lang/Integer;)Lcom/google/api/services/calendar/model/ReminderInstance;
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/api/services/calendar/model/ReminderInstance;->minutes:Ljava/lang/Integer;

    .line 71
    return-object p0
.end method
