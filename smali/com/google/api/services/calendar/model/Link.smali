.class public final Lcom/google/api/services/calendar/model/Link;
.super Lcom/google/api/client/json/GenericJson;
.source "Link.java"


# instance fields
.field private displayInfo:Lcom/google/api/services/calendar/model/DisplayInfo;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private launchInfo:Lcom/google/api/services/calendar/model/LaunchInfo;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private url:Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Link;->clone()Lcom/google/api/services/calendar/model/Link;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Link;->clone()Lcom/google/api/services/calendar/model/Link;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/calendar/model/Link;
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/Link;

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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Link;->clone()Lcom/google/api/services/calendar/model/Link;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayInfo()Lcom/google/api/services/calendar/model/DisplayInfo;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Link;->displayInfo:Lcom/google/api/services/calendar/model/DisplayInfo;

    return-object v0
.end method

.method public getLaunchInfo()Lcom/google/api/services/calendar/model/LaunchInfo;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Link;->launchInfo:Lcom/google/api/services/calendar/model/LaunchInfo;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Link;->url:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/Link;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/Link;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/Link;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/Link;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/Link;
    .locals 1

    .prologue
    .line 118
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/Link;

    return-object v0
.end method
