.class Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$QueryTermContact;
.super Ljava/lang/Object;
.source "QuickCreateEditSegment.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/api/contacts/Contact;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryTermContact"
.end annotation


# instance fields
.field private mContact:Lcom/google/personalization/assist/annotate/api/nano/Contact;

.field private final mKey:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;


# direct methods
.method private constructor <init>(Lcom/google/personalization/assist/annotate/api/nano/Contact;)V
    .locals 4

    .prologue
    .line 1266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1267
    iget-wide v0, p1, Lcom/google/personalization/assist/annotate/api/nano/Contact;->focusId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1268
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Contact is missing focus ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1271
    :cond_0
    iput-object p1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$QueryTermContact;->mContact:Lcom/google/personalization/assist/annotate/api/nano/Contact;

    .line 1273
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$QueryTermContact;->mContact:Lcom/google/personalization/assist/annotate/api/nano/Contact;

    iget-wide v0, v0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->focusId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/api/common/Principals;->fromFocusId(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/common/FocusIdPrincipalKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$QueryTermContact;->mKey:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    .line 1274
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/personalization/assist/annotate/api/nano/Contact;Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$1;)V
    .locals 0

    .prologue
    .line 1260
    invoke-direct {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$QueryTermContact;-><init>(Lcom/google/personalization/assist/annotate/api/nano/Contact;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 1311
    if-ne p0, p1, :cond_0

    .line 1312
    const/4 v0, 0x1

    .line 1319
    :goto_0
    return v0

    .line 1314
    :cond_0
    instance-of v0, p1, Lcom/google/calendar/v2/client/service/api/contacts/Contact;

    if-nez v0, :cond_1

    .line 1315
    const/4 v0, 0x0

    goto :goto_0

    .line 1317
    :cond_1
    check-cast p1, Lcom/google/calendar/v2/client/service/api/contacts/Contact;

    .line 1319
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$QueryTermContact;->getKey()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/contacts/Contact;->getKey()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$QueryTermContact;->mContact:Lcom/google/personalization/assist/annotate/api/nano/Contact;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;
    .locals 1

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$QueryTermContact;->mKey:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    return-object v0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1260
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$QueryTermContact;->getKey()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v0

    return-object v0
.end method

.method public getPhotoUrl(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$QueryTermContact;->mContact:Lcom/google/personalization/assist/annotate/api/nano/Contact;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->photoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPlusProfileId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$QueryTermContact;->mContact:Lcom/google/personalization/assist/annotate/api/nano/Contact;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->profileId:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimaryEmail()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$QueryTermContact;->mContact:Lcom/google/personalization/assist/annotate/api/nano/Contact;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->emailAddress:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;->emailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$QueryTermContact;->mKey:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
