.class public final Lcom/google/api/services/calendar/model/DisplayInfo;
.super Lcom/google/api/client/json/GenericJson;
.source "DisplayInfo.java"


# instance fields
.field private appIconUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private appShortTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private appTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private linkShortTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private linkTitle:Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/DisplayInfo;->clone()Lcom/google/api/services/calendar/model/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/DisplayInfo;->clone()Lcom/google/api/services/calendar/model/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/calendar/model/DisplayInfo;
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/DisplayInfo;

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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/DisplayInfo;->clone()Lcom/google/api/services/calendar/model/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAppIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/api/services/calendar/model/DisplayInfo;->appIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAppShortTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/api/services/calendar/model/DisplayInfo;->appShortTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getAppTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/api/services/calendar/model/DisplayInfo;->appTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkShortTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/api/services/calendar/model/DisplayInfo;->linkShortTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/api/services/calendar/model/DisplayInfo;->linkTitle:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/DisplayInfo;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/DisplayInfo;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/DisplayInfo;
    .locals 1

    .prologue
    .line 139
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/DisplayInfo;

    return-object v0
.end method
