.class public final Lcom/google/api/services/calendar/model/AclRule;
.super Lcom/google/api/client/json/GenericJson;
.source "AclRule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/calendar/model/AclRule$Scope;
    }
.end annotation


# instance fields
.field private role:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private scope:Lcom/google/api/services/calendar/model/AclRule$Scope;
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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/AclRule;->clone()Lcom/google/api/services/calendar/model/AclRule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/AclRule;->clone()Lcom/google/api/services/calendar/model/AclRule;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/calendar/model/AclRule;
    .locals 1

    .prologue
    .line 201
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/AclRule;

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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/AclRule;->clone()Lcom/google/api/services/calendar/model/AclRule;

    move-result-object v0

    return-object v0
.end method

.method public getRole()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/api/services/calendar/model/AclRule;->role:Ljava/lang/String;

    return-object v0
.end method

.method public getScope()Lcom/google/api/services/calendar/model/AclRule$Scope;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/api/services/calendar/model/AclRule;->scope:Lcom/google/api/services/calendar/model/AclRule$Scope;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/AclRule;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/AclRule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/AclRule;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/AclRule;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/AclRule;
    .locals 1

    .prologue
    .line 196
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/AclRule;

    return-object v0
.end method
