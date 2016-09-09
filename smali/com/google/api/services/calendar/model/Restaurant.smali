.class public final Lcom/google/api/services/calendar/model/Restaurant;
.super Lcom/google/api/client/json/GenericJson;
.source "Restaurant.java"


# instance fields
.field private image:Lcom/google/api/services/calendar/model/Image;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private organization:Lcom/google/api/services/calendar/model/Organization;
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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Restaurant;->clone()Lcom/google/api/services/calendar/model/Restaurant;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Restaurant;->clone()Lcom/google/api/services/calendar/model/Restaurant;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/calendar/model/Restaurant;
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/Restaurant;

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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Restaurant;->clone()Lcom/google/api/services/calendar/model/Restaurant;

    move-result-object v0

    return-object v0
.end method

.method public getImage()Lcom/google/api/services/calendar/model/Image;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Restaurant;->image:Lcom/google/api/services/calendar/model/Image;

    return-object v0
.end method

.method public getOrganization()Lcom/google/api/services/calendar/model/Organization;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Restaurant;->organization:Lcom/google/api/services/calendar/model/Organization;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/Restaurant;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/Restaurant;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/Restaurant;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/Restaurant;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/Restaurant;
    .locals 1

    .prologue
    .line 118
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/Restaurant;

    return-object v0
.end method
