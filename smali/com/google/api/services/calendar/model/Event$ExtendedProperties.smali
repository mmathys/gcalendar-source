.class public final Lcom/google/api/services/calendar/model/Event$ExtendedProperties;
.super Lcom/google/api/client/json/GenericJson;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/calendar/model/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtendedProperties"
.end annotation


# instance fields
.field private private__:Ljava/util/Map;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "private"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private shared:Ljava/util/Map;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1825
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 1825
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event$ExtendedProperties;->clone()Lcom/google/api/services/calendar/model/Event$ExtendedProperties;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 1825
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event$ExtendedProperties;->clone()Lcom/google/api/services/calendar/model/Event$ExtendedProperties;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/calendar/model/Event$ExtendedProperties;
    .locals 1

    .prologue
    .line 1882
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/Event$ExtendedProperties;

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
    .line 1825
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event$ExtendedProperties;->clone()Lcom/google/api/services/calendar/model/Event$ExtendedProperties;

    move-result-object v0

    return-object v0
.end method

.method public getPrivate()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1846
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Event$ExtendedProperties;->private__:Ljava/util/Map;

    return-object v0
.end method

.method public getShared()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1863
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Event$ExtendedProperties;->shared:Ljava/util/Map;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 1825
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/Event$ExtendedProperties;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/Event$ExtendedProperties;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 1825
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/Event$ExtendedProperties;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/Event$ExtendedProperties;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/Event$ExtendedProperties;
    .locals 1

    .prologue
    .line 1877
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/Event$ExtendedProperties;

    return-object v0
.end method

.method public setPrivate(Ljava/util/Map;)Lcom/google/api/services/calendar/model/Event$ExtendedProperties;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/calendar/model/Event$ExtendedProperties;"
        }
    .end annotation

    .prologue
    .line 1854
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Event$ExtendedProperties;->private__:Ljava/util/Map;

    .line 1855
    return-object p0
.end method

.method public setShared(Ljava/util/Map;)Lcom/google/api/services/calendar/model/Event$ExtendedProperties;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/calendar/model/Event$ExtendedProperties;"
        }
    .end annotation

    .prologue
    .line 1871
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Event$ExtendedProperties;->shared:Ljava/util/Map;

    .line 1872
    return-object p0
.end method
