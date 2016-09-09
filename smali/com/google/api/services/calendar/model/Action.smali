.class public final Lcom/google/api/services/calendar/model/Action;
.super Lcom/google/api/client/json/GenericJson;
.source "Action.java"


# instance fields
.field private goToAction:Lcom/google/api/services/calendar/model/CalendarGoTo;
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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Action;->clone()Lcom/google/api/services/calendar/model/Action;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Action;->clone()Lcom/google/api/services/calendar/model/Action;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/calendar/model/Action;
    .locals 1

    .prologue
    .line 354
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/Action;

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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Action;->clone()Lcom/google/api/services/calendar/model/Action;

    move-result-object v0

    return-object v0
.end method

.method public getGoToAction()Lcom/google/api/services/calendar/model/CalendarGoTo;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Action;->goToAction:Lcom/google/api/services/calendar/model/CalendarGoTo;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/Action;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/Action;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/Action;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/Action;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/Action;
    .locals 1

    .prologue
    .line 349
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/Action;

    return-object v0
.end method
