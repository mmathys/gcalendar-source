.class public final Lcom/google/api/services/calendar/model/Contract;
.super Lcom/google/api/client/json/GenericJson;
.source "Contract.java"


# instance fields
.field private durationMinutes:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private interval:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private numInstancesPerInterval:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private timePattern:Lcom/google/api/services/calendar/model/TimePattern;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private untilMillisUtc:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation

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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Contract;->clone()Lcom/google/api/services/calendar/model/Contract;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Contract;->clone()Lcom/google/api/services/calendar/model/Contract;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/calendar/model/Contract;
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/Contract;

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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Contract;->clone()Lcom/google/api/services/calendar/model/Contract;

    move-result-object v0

    return-object v0
.end method

.method public getDurationMinutes()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Contract;->durationMinutes:Ljava/lang/Integer;

    return-object v0
.end method

.method public getInterval()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Contract;->interval:Ljava/lang/String;

    return-object v0
.end method

.method public getNumInstancesPerInterval()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Contract;->numInstancesPerInterval:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTimePattern()Lcom/google/api/services/calendar/model/TimePattern;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Contract;->timePattern:Lcom/google/api/services/calendar/model/TimePattern;

    return-object v0
.end method

.method public getUntilMillisUtc()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Contract;->untilMillisUtc:Ljava/lang/Long;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/Contract;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/Contract;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/Contract;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/Contract;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/Contract;
    .locals 1

    .prologue
    .line 139
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/Contract;

    return-object v0
.end method

.method public setDurationMinutes(Ljava/lang/Integer;)Lcom/google/api/services/calendar/model/Contract;
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Contract;->durationMinutes:Ljava/lang/Integer;

    .line 74
    return-object p0
.end method

.method public setInterval(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Contract;
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Contract;->interval:Ljava/lang/String;

    .line 89
    return-object p0
.end method

.method public setNumInstancesPerInterval(Ljava/lang/Integer;)Lcom/google/api/services/calendar/model/Contract;
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Contract;->numInstancesPerInterval:Ljava/lang/Integer;

    .line 104
    return-object p0
.end method

.method public setTimePattern(Lcom/google/api/services/calendar/model/TimePattern;)Lcom/google/api/services/calendar/model/Contract;
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Contract;->timePattern:Lcom/google/api/services/calendar/model/TimePattern;

    .line 119
    return-object p0
.end method

.method public setUntilMillisUtc(Ljava/lang/Long;)Lcom/google/api/services/calendar/model/Contract;
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Contract;->untilMillisUtc:Ljava/lang/Long;

    .line 134
    return-object p0
.end method
