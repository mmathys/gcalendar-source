.class public Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl;
.super Ljava/lang/Object;
.source "ContactImpl.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/api/contacts/Contact;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl$Builder;
    }
.end annotation


# instance fields
.field private final fullName:Ljava/lang/String;

.field private final key:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

.field private final photoUrl:Ljava/lang/String;

.field private final plusProfileId:Ljava/lang/String;

.field private final primaryEmail:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl$Builder;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iget-object v0, p1, Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl$Builder;->fullName:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl;->fullName:Ljava/lang/String;

    .line 20
    iget-object v0, p1, Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl$Builder;->primaryEmail:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl;->primaryEmail:Ljava/lang/String;

    .line 21
    iget-object v0, p1, Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl$Builder;->plusProfileId:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl;->plusProfileId:Ljava/lang/String;

    .line 22
    iget-object v0, p1, Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl$Builder;->photoUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl;->photoUrl:Ljava/lang/String;

    .line 23
    iget-object v0, p1, Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl$Builder;->key:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl;->key:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl$Builder;Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl$1;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl;-><init>(Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl$Builder;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 59
    if-ne p0, p1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return v0

    .line 62
    :cond_1
    instance-of v2, p1, Lcom/google/calendar/v2/client/service/api/contacts/Contact;

    if-nez v2, :cond_2

    move v0, v1

    .line 63
    goto :goto_0

    .line 65
    :cond_2
    check-cast p1, Lcom/google/calendar/v2/client/service/api/contacts/Contact;

    .line 67
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/contacts/Contact;->getFullName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 68
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl;->getPrimaryEmail()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/contacts/Contact;->getPrimaryEmail()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 69
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl;->getPlusProfileId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/contacts/Contact;->getPlusProfileId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 70
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl;->getKey()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/contacts/Contact;->getKey()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl;->key:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    return-object v0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl;->getKey()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v0

    return-object v0
.end method

.method public getPhotoUrl(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl;->photoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPlusProfileId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl;->plusProfileId:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimaryEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl;->primaryEmail:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl;->key:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
