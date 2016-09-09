.class Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;
.super Lcom/android/calendar/event/edit/segment/BaseChipSpan;
.source "GuestEditSegment.java"

# interfaces
.implements Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$ChipCollectionSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/edit/segment/GuestEditSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContactChip"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/event/edit/segment/BaseChipSpan;",
        "Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$ChipCollectionSpan",
        "<",
        "Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;",
        ">;"
    }
.end annotation


# instance fields
.field private mContact:Lcom/google/calendar/v2/client/service/api/contacts/Contact;

.field private mHasContactsPermission:Z

.field private final mKey:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

.field private mName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;)V
    .locals 1

    .prologue
    .line 905
    invoke-direct {p0, p1}, Lcom/android/calendar/event/edit/segment/BaseChipSpan;-><init>(Landroid/content/Context;)V

    .line 906
    invoke-static {p1}, Lcom/android/calendar/Utils;->hasContactsPermissions(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;->mHasContactsPermission:Z

    .line 907
    iput-object p2, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;->mKey:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    .line 908
    return-void
.end method

.method static synthetic access$900(Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 895
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public static fromAttendee(Landroid/content/Context;Lcom/google/calendar/v2/client/service/api/events/Attendee;Z)Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;
    .locals 5

    .prologue
    .line 912
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->getPrincipal()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v1

    .line 913
    new-instance v2, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;

    invoke-direct {v2, p0, v1}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;-><init>(Landroid/content/Context;Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;)V

    .line 916
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->getFallbackNameInternal()Ljava/lang/String;

    move-result-object v3

    .line 917
    const/4 v0, 0x0

    .line 918
    instance-of v4, v1, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    if-eqz v4, :cond_0

    move-object v0, v1

    .line 919
    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 921
    :cond_0
    invoke-static {p0, v3, v0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;->getBestEffortName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;->mName:Ljava/lang/String;

    .line 923
    iget-object v3, v2, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;->mName:Ljava/lang/String;

    # invokes: Lcom/android/calendar/event/edit/segment/GuestEditSegment;->createEmailContact(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;Ljava/lang/String;Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/contacts/Contact;
    invoke-static {v1, v3, v0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->access$1200(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;Ljava/lang/String;Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/contacts/Contact;

    move-result-object v0

    iput-object v0, v2, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;->mContact:Lcom/google/calendar/v2/client/service/api/contacts/Contact;

    .line 924
    return-object v2
.end method

.method public static fromRecipientEntry(Landroid/content/Context;Lcom/android/ex/chips/RecipientEntry;)Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;
    .locals 4

    .prologue
    .line 940
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v0

    .line 941
    invoke-static {v0}, Lcom/google/calendar/v2/client/service/api/common/Principals;->fromEmail(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    move-result-object v1

    .line 942
    new-instance v2, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;

    invoke-direct {v2, p0, v1}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;-><init>(Landroid/content/Context;Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;)V

    .line 944
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;->getBestEffortName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;->mName:Ljava/lang/String;

    .line 945
    iget-object v3, v2, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;->mName:Ljava/lang/String;

    # invokes: Lcom/android/calendar/event/edit/segment/GuestEditSegment;->createEmailContact(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;Ljava/lang/String;Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/contacts/Contact;
    invoke-static {v1, v3, v0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->access$1200(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;Ljava/lang/String;Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/contacts/Contact;

    move-result-object v0

    iput-object v0, v2, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;->mContact:Lcom/google/calendar/v2/client/service/api/contacts/Contact;

    .line 946
    return-object v2
.end method

.method public static fromRfc822Token(Landroid/content/Context;Landroid/text/util/Rfc822Token;)Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;
    .locals 4

    .prologue
    .line 950
    invoke-virtual {p1}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 951
    invoke-static {v0}, Lcom/google/calendar/v2/client/service/api/common/Principals;->fromEmail(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    move-result-object v1

    .line 953
    new-instance v2, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;

    invoke-direct {v2, p0, v1}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;-><init>(Landroid/content/Context;Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;)V

    .line 954
    invoke-virtual {p1}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;->getBestEffortName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;->mName:Ljava/lang/String;

    .line 955
    iget-object v3, v2, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;->mName:Ljava/lang/String;

    # invokes: Lcom/android/calendar/event/edit/segment/GuestEditSegment;->createEmailContact(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;Ljava/lang/String;Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/contacts/Contact;
    invoke-static {v1, v3, v0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->access$1200(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;Ljava/lang/String;Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/contacts/Contact;

    move-result-object v0

    iput-object v0, v2, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;->mContact:Lcom/google/calendar/v2/client/service/api/contacts/Contact;

    .line 956
    return-object v2
.end method

.method private static getBestEffortName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 929
    invoke-static {p1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 935
    :goto_0
    return-object p1

    .line 932
    :cond_0
    invoke-static {p2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object p1, p2

    .line 933
    goto :goto_0

    .line 935
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->unknown_guest_name:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method protected createIcon()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 991
    iget-boolean v1, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;->mHasContactsPermission:Z

    if-nez v1, :cond_1

    .line 1010
    :cond_0
    :goto_0
    return-object v0

    .line 994
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;->getEmail()Ljava/lang/String;

    move-result-object v1

    .line 995
    if-eqz v1, :cond_0

    .line 999
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;->getConfig()Lcom/android/calendar/event/edit/segment/ChipConfig;

    move-result-object v0

    .line 1000
    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/ChipConfig;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/ChipConfig;->getIconInset()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v2, v0

    .line 1002
    new-instance v0, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;

    iget-object v3, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;->mContext:Landroid/content/Context;

    .line 1003
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1004
    invoke-static {}, Lcom/android/calendar/BitmapCacheHolder;->getContactPhotoCache()Lcom/android/bitmap/BitmapCache;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v0, v3, v4, v5}, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;-><init>(Landroid/content/res/Resources;Lcom/android/bitmap/BitmapCache;Z)V

    .line 1006
    new-instance v3, Lcom/android/calendar/timely/ContactPhotoRequestKey;

    iget-object v4, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;->mContext:Landroid/content/Context;

    .line 1007
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/android/calendar/timely/ContactPhotoRequestKey;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1008
    invoke-virtual {v0, v2, v2}, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;->setDecodeDimensions(II)V

    .line 1009
    invoke-virtual {v0, v3}, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;->bind(Lcom/android/bitmap/RequestKey;)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1025
    if-ne p1, p0, :cond_1

    .line 1028
    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;->mKey:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    check-cast p1, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;

    iget-object v2, p1, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;->mKey:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    .line 1029
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBufferText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 981
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;->getEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getChipText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 986
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 962
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;->mKey:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    instance-of v0, v0, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    if-eqz v0, :cond_0

    .line 963
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;->mKey:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 970
    :goto_0
    return-object v0

    .line 966
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;->mContact:Lcom/google/calendar/v2/client/service/api/contacts/Contact;

    if-eqz v0, :cond_1

    .line 967
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;->mContact:Lcom/google/calendar/v2/client/service/api/contacts/Contact;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/contacts/Contact;->getPrimaryEmail()Ljava/lang/String;

    .line 970
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKey()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;
    .locals 1

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;->mKey:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    return-object v0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 895
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;->getKey()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;->mKey:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
