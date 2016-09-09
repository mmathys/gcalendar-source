.class public Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl$Builder;
.super Ljava/lang/Object;
.source "ContactImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field fullName:Ljava/lang/String;

.field key:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

.field photoUrl:Ljava/lang/String;

.field plusProfileId:Ljava/lang/String;

.field primaryEmail:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl;-><init>(Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl$Builder;Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl$1;)V

    return-object v0
.end method

.method public setFullName(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl$Builder;
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl$Builder;->fullName:Ljava/lang/String;

    .line 85
    return-object p0
.end method

.method public setKey(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;)Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl$Builder;
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl$Builder;->key:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    .line 105
    return-object p0
.end method

.method public setPlusProfileId(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl$Builder;
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl$Builder;->plusProfileId:Ljava/lang/String;

    .line 95
    return-object p0
.end method

.method public setPrimaryEmail(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl$Builder;
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl$Builder;->primaryEmail:Ljava/lang/String;

    .line 90
    return-object p0
.end method
