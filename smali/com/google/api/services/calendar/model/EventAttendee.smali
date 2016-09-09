.class public final Lcom/google/api/services/calendar/model/EventAttendee;
.super Lcom/google/api/client/json/GenericJson;
.source "EventAttendee.java"


# instance fields
.field private displayName:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private email:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private optional:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private organizer:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private responseStatus:Ljava/lang/String;
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
    .line 30
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventAttendee;->clone()Lcom/google/api/services/calendar/model/EventAttendee;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventAttendee;->clone()Lcom/google/api/services/calendar/model/EventAttendee;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/calendar/model/EventAttendee;
    .locals 1

    .prologue
    .line 454
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/EventAttendee;

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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventAttendee;->clone()Lcom/google/api/services/calendar/model/EventAttendee;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/api/services/calendar/model/EventAttendee;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/api/services/calendar/model/EventAttendee;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/api/services/calendar/model/EventAttendee;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getOptional()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/api/services/calendar/model/EventAttendee;->optional:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getOrganizer()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/api/services/calendar/model/EventAttendee;->organizer:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getResponseStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/google/api/services/calendar/model/EventAttendee;->responseStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getSelf()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/google/api/services/calendar/model/EventAttendee;->self:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/EventAttendee;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/EventAttendee;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/EventAttendee;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/EventAttendee;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/EventAttendee;
    .locals 1

    .prologue
    .line 449
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/EventAttendee;

    return-object v0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/api/services/calendar/model/EventAttendee;
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/google/api/services/calendar/model/EventAttendee;->displayName:Ljava/lang/String;

    .line 170
    return-object p0
.end method

.method public setEmail(Ljava/lang/String;)Lcom/google/api/services/calendar/model/EventAttendee;
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/google/api/services/calendar/model/EventAttendee;->email:Ljava/lang/String;

    .line 189
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/api/services/calendar/model/EventAttendee;
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/google/api/services/calendar/model/EventAttendee;->id:Ljava/lang/String;

    .line 252
    return-object p0
.end method

.method public setOptional(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/model/EventAttendee;
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/google/api/services/calendar/model/EventAttendee;->optional:Ljava/lang/Boolean;

    .line 286
    return-object p0
.end method

.method public setResponseStatus(Ljava/lang/String;)Lcom/google/api/services/calendar/model/EventAttendee;
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Lcom/google/api/services/calendar/model/EventAttendee;->responseStatus:Ljava/lang/String;

    .line 397
    return-object p0
.end method
