.class public final Lcom/google/api/services/calendar/model/Event$Organizer;
.super Lcom/google/api/client/json/GenericJson;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/calendar/model/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Organizer"
.end annotation


# instance fields
.field private email:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private self:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2107
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 2107
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event$Organizer;->clone()Lcom/google/api/services/calendar/model/Event$Organizer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 2107
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event$Organizer;->clone()Lcom/google/api/services/calendar/model/Event$Organizer;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/calendar/model/Event$Organizer;
    .locals 1

    .prologue
    .line 2246
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/Event$Organizer;

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
    .line 2107
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event$Organizer;->clone()Lcom/google/api/services/calendar/model/Event$Organizer;

    move-result-object v0

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2161
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Event$Organizer;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2179
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Event$Organizer;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getSelf()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 2198
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Event$Organizer;->self:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 2107
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/Event$Organizer;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/Event$Organizer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 2107
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/Event$Organizer;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/Event$Organizer;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/Event$Organizer;
    .locals 1

    .prologue
    .line 2241
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/Event$Organizer;

    return-object v0
.end method

.method public setEmail(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event$Organizer;
    .locals 0

    .prologue
    .line 2169
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Event$Organizer;->email:Ljava/lang/String;

    .line 2170
    return-object p0
.end method
