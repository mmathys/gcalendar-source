.class public final Lcom/google/api/services/calendar/model/Event$Reminders;
.super Lcom/google/api/client/json/GenericJson;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/calendar/model/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Reminders"
.end annotation


# instance fields
.field private overrides:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/EventReminder;",
            ">;"
        }
    .end annotation
.end field

.field private useDefault:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2254
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 2254
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event$Reminders;->clone()Lcom/google/api/services/calendar/model/Event$Reminders;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 2254
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event$Reminders;->clone()Lcom/google/api/services/calendar/model/Event$Reminders;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/calendar/model/Event$Reminders;
    .locals 1

    .prologue
    .line 2317
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/Event$Reminders;

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
    .line 2254
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event$Reminders;->clone()Lcom/google/api/services/calendar/model/Event$Reminders;

    move-result-object v0

    return-object v0
.end method

.method public getOverrides()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/EventReminder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2279
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Event$Reminders;->overrides:Ljava/util/List;

    return-object v0
.end method

.method public getUseDefault()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 2298
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Event$Reminders;->useDefault:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 2254
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/Event$Reminders;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/Event$Reminders;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 2254
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/Event$Reminders;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/Event$Reminders;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/Event$Reminders;
    .locals 1

    .prologue
    .line 2312
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/Event$Reminders;

    return-object v0
.end method

.method public setOverrides(Ljava/util/List;)Lcom/google/api/services/calendar/model/Event$Reminders;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/EventReminder;",
            ">;)",
            "Lcom/google/api/services/calendar/model/Event$Reminders;"
        }
    .end annotation

    .prologue
    .line 2289
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Event$Reminders;->overrides:Ljava/util/List;

    .line 2290
    return-object p0
.end method

.method public setUseDefault(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/model/Event$Reminders;
    .locals 0

    .prologue
    .line 2306
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Event$Reminders;->useDefault:Ljava/lang/Boolean;

    .line 2307
    return-object p0
.end method
