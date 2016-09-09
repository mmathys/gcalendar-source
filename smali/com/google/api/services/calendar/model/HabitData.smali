.class public final Lcom/google/api/services/calendar/model/HabitData;
.super Lcom/google/api/client/json/GenericJson;
.source "HabitData.java"


# instance fields
.field private color:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private contract:Lcom/google/api/services/calendar/model/Contract;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private customName:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private reminders:Lcom/google/api/services/calendar/model/Reminders;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private summary:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private visibility:Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/HabitData;->clone()Lcom/google/api/services/calendar/model/HabitData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/HabitData;->clone()Lcom/google/api/services/calendar/model/HabitData;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/calendar/model/HabitData;
    .locals 1

    .prologue
    .line 228
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/HabitData;

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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/HabitData;->clone()Lcom/google/api/services/calendar/model/HabitData;

    move-result-object v0

    return-object v0
.end method

.method public getColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/api/services/calendar/model/HabitData;->color:Ljava/lang/String;

    return-object v0
.end method

.method public getContract()Lcom/google/api/services/calendar/model/Contract;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/api/services/calendar/model/HabitData;->contract:Lcom/google/api/services/calendar/model/Contract;

    return-object v0
.end method

.method public getCustomName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/api/services/calendar/model/HabitData;->customName:Ljava/lang/String;

    return-object v0
.end method

.method public getReminders()Lcom/google/api/services/calendar/model/Reminders;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/api/services/calendar/model/HabitData;->reminders:Lcom/google/api/services/calendar/model/Reminders;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/api/services/calendar/model/HabitData;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/api/services/calendar/model/HabitData;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getVisibility()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/api/services/calendar/model/HabitData;->visibility:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/HabitData;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/HabitData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/HabitData;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/HabitData;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/HabitData;
    .locals 1

    .prologue
    .line 223
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/HabitData;

    return-object v0
.end method

.method public setColor(Ljava/lang/String;)Lcom/google/api/services/calendar/model/HabitData;
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/api/services/calendar/model/HabitData;->color:Ljava/lang/String;

    .line 98
    return-object p0
.end method

.method public setContract(Lcom/google/api/services/calendar/model/Contract;)Lcom/google/api/services/calendar/model/HabitData;
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/google/api/services/calendar/model/HabitData;->contract:Lcom/google/api/services/calendar/model/Contract;

    .line 113
    return-object p0
.end method

.method public setCustomName(Ljava/lang/String;)Lcom/google/api/services/calendar/model/HabitData;
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/google/api/services/calendar/model/HabitData;->customName:Ljava/lang/String;

    .line 128
    return-object p0
.end method

.method public setReminders(Lcom/google/api/services/calendar/model/Reminders;)Lcom/google/api/services/calendar/model/HabitData;
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/google/api/services/calendar/model/HabitData;->reminders:Lcom/google/api/services/calendar/model/Reminders;

    .line 158
    return-object p0
.end method

.method public setSummary(Ljava/lang/String;)Lcom/google/api/services/calendar/model/HabitData;
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/google/api/services/calendar/model/HabitData;->summary:Ljava/lang/String;

    .line 173
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/services/calendar/model/HabitData;
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/google/api/services/calendar/model/HabitData;->type:Ljava/lang/String;

    .line 203
    return-object p0
.end method

.method public setVisibility(Ljava/lang/String;)Lcom/google/api/services/calendar/model/HabitData;
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/google/api/services/calendar/model/HabitData;->visibility:Ljava/lang/String;

    .line 218
    return-object p0
.end method
