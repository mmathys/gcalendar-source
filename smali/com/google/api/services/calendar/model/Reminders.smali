.class public final Lcom/google/api/services/calendar/model/Reminders;
.super Lcom/google/api/client/json/GenericJson;
.source "Reminders.java"


# instance fields
.field private enableFollowup:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private enableRecommit:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private reminderOverrides:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/ReminderInstance;",
            ">;"
        }
    .end annotation
.end field

.field private useDefaultReminders:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/google/api/services/calendar/model/ReminderInstance;

    invoke-static {v0}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 54
    return-void
.end method

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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Reminders;->clone()Lcom/google/api/services/calendar/model/Reminders;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Reminders;->clone()Lcom/google/api/services/calendar/model/Reminders;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/calendar/model/Reminders;
    .locals 1

    .prologue
    .line 129
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/Reminders;

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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Reminders;->clone()Lcom/google/api/services/calendar/model/Reminders;

    move-result-object v0

    return-object v0
.end method

.method public getEnableFollowup()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Reminders;->enableFollowup:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getEnableRecommit()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Reminders;->enableRecommit:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getReminderOverrides()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/ReminderInstance;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Reminders;->reminderOverrides:Ljava/util/List;

    return-object v0
.end method

.method public getUseDefaultReminders()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Reminders;->useDefaultReminders:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/Reminders;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/Reminders;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/Reminders;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/Reminders;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/Reminders;
    .locals 1

    .prologue
    .line 124
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/Reminders;

    return-object v0
.end method

.method public setEnableFollowup(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/model/Reminders;
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Reminders;->enableFollowup:Ljava/lang/Boolean;

    .line 74
    return-object p0
.end method

.method public setEnableRecommit(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/model/Reminders;
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Reminders;->enableRecommit:Ljava/lang/Boolean;

    .line 89
    return-object p0
.end method

.method public setReminderOverrides(Ljava/util/List;)Lcom/google/api/services/calendar/model/Reminders;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/ReminderInstance;",
            ">;)",
            "Lcom/google/api/services/calendar/model/Reminders;"
        }
    .end annotation

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Reminders;->reminderOverrides:Ljava/util/List;

    .line 104
    return-object p0
.end method

.method public setUseDefaultReminders(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/model/Reminders;
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Reminders;->useDefaultReminders:Ljava/lang/Boolean;

    .line 119
    return-object p0
.end method
