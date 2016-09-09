.class public final Lcom/google/api/services/calendar/model/DailyPattern;
.super Lcom/google/api/client/json/GenericJson;
.source "DailyPattern.java"


# instance fields
.field private afternoon:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private any:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private evening:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private morning:Ljava/lang/Boolean;
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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/DailyPattern;->clone()Lcom/google/api/services/calendar/model/DailyPattern;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/DailyPattern;->clone()Lcom/google/api/services/calendar/model/DailyPattern;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/calendar/model/DailyPattern;
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/DailyPattern;

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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/DailyPattern;->clone()Lcom/google/api/services/calendar/model/DailyPattern;

    move-result-object v0

    return-object v0
.end method

.method public getAfternoon()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/api/services/calendar/model/DailyPattern;->afternoon:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAny()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/api/services/calendar/model/DailyPattern;->any:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getEvening()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/api/services/calendar/model/DailyPattern;->evening:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getMorning()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/api/services/calendar/model/DailyPattern;->morning:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/DailyPattern;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/DailyPattern;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/DailyPattern;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/DailyPattern;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/DailyPattern;
    .locals 1

    .prologue
    .line 118
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/DailyPattern;

    return-object v0
.end method

.method public setAfternoon(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/model/DailyPattern;
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/api/services/calendar/model/DailyPattern;->afternoon:Ljava/lang/Boolean;

    .line 68
    return-object p0
.end method

.method public setAny(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/model/DailyPattern;
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/api/services/calendar/model/DailyPattern;->any:Ljava/lang/Boolean;

    .line 83
    return-object p0
.end method

.method public setEvening(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/model/DailyPattern;
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/api/services/calendar/model/DailyPattern;->evening:Ljava/lang/Boolean;

    .line 98
    return-object p0
.end method

.method public setMorning(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/model/DailyPattern;
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/google/api/services/calendar/model/DailyPattern;->morning:Ljava/lang/Boolean;

    .line 113
    return-object p0
.end method
