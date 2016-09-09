.class public final Lcom/google/api/services/calendar/model/EventDateTime;
.super Lcom/google/api/client/json/GenericJson;
.source "EventDateTime.java"


# instance fields
.field private date:Lcom/google/api/client/util/DateTime;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private dateTime:Lcom/google/api/client/util/DateTime;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private timeZone:Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventDateTime;->clone()Lcom/google/api/services/calendar/model/EventDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventDateTime;->clone()Lcom/google/api/services/calendar/model/EventDateTime;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/calendar/model/EventDateTime;
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/EventDateTime;

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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventDateTime;->clone()Lcom/google/api/services/calendar/model/EventDateTime;

    move-result-object v0

    return-object v0
.end method

.method public getDate()Lcom/google/api/client/util/DateTime;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/api/services/calendar/model/EventDateTime;->date:Lcom/google/api/client/util/DateTime;

    return-object v0
.end method

.method public getDateTime()Lcom/google/api/client/util/DateTime;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/api/services/calendar/model/EventDateTime;->dateTime:Lcom/google/api/client/util/DateTime;

    return-object v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/api/services/calendar/model/EventDateTime;->timeZone:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/EventDateTime;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/EventDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/EventDateTime;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/EventDateTime;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/EventDateTime;
    .locals 1

    .prologue
    .line 118
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/EventDateTime;

    return-object v0
.end method

.method public setDate(Lcom/google/api/client/util/DateTime;)Lcom/google/api/services/calendar/model/EventDateTime;
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/api/services/calendar/model/EventDateTime;->date:Lcom/google/api/client/util/DateTime;

    .line 71
    return-object p0
.end method

.method public setDateTime(Lcom/google/api/client/util/DateTime;)Lcom/google/api/services/calendar/model/EventDateTime;
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/api/services/calendar/model/EventDateTime;->dateTime:Lcom/google/api/client/util/DateTime;

    .line 90
    return-object p0
.end method

.method public setTimeZone(Ljava/lang/String;)Lcom/google/api/services/calendar/model/EventDateTime;
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/google/api/services/calendar/model/EventDateTime;->timeZone:Ljava/lang/String;

    .line 113
    return-object p0
.end method
