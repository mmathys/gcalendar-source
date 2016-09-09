.class public final Lcom/google/api/services/calendar/model/Setting;
.super Lcom/google/api/client/json/GenericJson;
.source "Setting.java"


# instance fields
.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private namespace:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private value:Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Setting;->clone()Lcom/google/api/services/calendar/model/Setting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Setting;->clone()Lcom/google/api/services/calendar/model/Setting;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/calendar/model/Setting;
    .locals 1

    .prologue
    .line 249
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/Setting;

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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Setting;->clone()Lcom/google/api/services/calendar/model/Setting;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Setting;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Setting;->value:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/Setting;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/Setting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/Setting;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/Setting;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/Setting;
    .locals 1

    .prologue
    .line 244
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/Setting;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Setting;
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Setting;->id:Ljava/lang/String;

    .line 161
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Setting;
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Setting;->name:Ljava/lang/String;

    .line 197
    return-object p0
.end method

.method public setNamespace(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Setting;
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Setting;->namespace:Ljava/lang/String;

    .line 220
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Setting;
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Setting;->value:Ljava/lang/String;

    .line 239
    return-object p0
.end method
