.class public Lcom/google/android/calendar/event/view/AttachmentView;
.super Landroid/widget/FrameLayout;
.source "AttachmentView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mFileUrl:Ljava/lang/String;

.field private final mIconCache:Lcom/android/bitmap/BitmapCache;

.field private final mIconHeight:I

.field private final mIconWidth:I

.field private final mResources:Landroid/content/res/Resources;

.field private mViewOnly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/google/android/calendar/event/view/AttachmentView;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/event/view/AttachmentView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 62
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/calendar/event/view/AttachmentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/calendar/event/view/AttachmentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/view/AttachmentView;->mResources:Landroid/content/res/Resources;

    .line 72
    invoke-static {}, Lcom/android/calendar/BitmapCacheHolder;->getAttachmentIconCache()Lcom/android/bitmap/BitmapCache;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/view/AttachmentView;->mIconCache:Lcom/android/bitmap/BitmapCache;

    .line 73
    iget-object v0, p0, Lcom/google/android/calendar/event/view/AttachmentView;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$dimen;->attachment_chip_icon_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/calendar/event/view/AttachmentView;->mIconWidth:I

    .line 74
    iget-object v0, p0, Lcom/google/android/calendar/event/view/AttachmentView;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$dimen;->attachment_chip_icon_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/calendar/event/view/AttachmentView;->mIconHeight:I

    .line 75
    return-void
.end method

.method private getCornersDrawable(I)Lcom/android/calendar/timely/TimelyStyledCornersBitmapDrawable;
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 175
    new-instance v4, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;

    const/4 v0, 0x4

    invoke-direct {v4, v0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;-><init>(I)V

    .line 177
    iget-object v0, p0, Lcom/google/android/calendar/event/view/AttachmentView;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$color;->attachment_color_chip_color_background:I

    .line 178
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, v4, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->backgroundColor:I

    .line 179
    const/4 v0, -0x1

    iput v0, v4, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->placeholderAnimationDuration:I

    .line 181
    new-instance v0, Lcom/android/calendar/timely/TimelyStyledCornersBitmapDrawable;

    iget-object v1, p0, Lcom/google/android/calendar/event/view/AttachmentView;->mResources:Landroid/content/res/Resources;

    .line 183
    invoke-static {}, Lcom/android/calendar/BitmapCacheHolder;->getAttachmentChipCache()Lcom/android/bitmap/BitmapCache;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/google/android/calendar/event/view/AttachmentView;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/android/calendar/R$dimen;->attachment_chip_corner_round_radius:I

    .line 186
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    iget-object v6, p0, Lcom/google/android/calendar/event/view/AttachmentView;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/android/calendar/R$dimen;->attachment_chip_corner_flap_side:I

    .line 187
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/android/calendar/timely/TimelyStyledCornersBitmapDrawable;-><init>(Landroid/content/res/Resources;Lcom/android/bitmap/BitmapCache;ZLcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;FF)V

    .line 189
    iget-object v1, p0, Lcom/google/android/calendar/event/view/AttachmentView;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/calendar/R$dimen;->attachment_chip_width:I

    .line 190
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/calendar/event/view/AttachmentView;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/calendar/R$dimen;->attachment_chip_height:I

    .line 191
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 189
    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/timely/TimelyStyledCornersBitmapDrawable;->setDecodeDimensions(II)V

    .line 192
    const/4 v1, 0x2

    invoke-virtual {v0, v8, v8, v1, v8}, Lcom/android/calendar/timely/TimelyStyledCornersBitmapDrawable;->setCornerStylesRelative(IIII)V

    .line 196
    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/TimelyStyledCornersBitmapDrawable;->setFlapColor(I)V

    .line 200
    invoke-static {}, Lcom/android/calendar/Utils;->isJellybeanMr2OrLater()Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    const/4 v1, 0x0

    invoke-virtual {p0, v8, v1}, Lcom/google/android/calendar/event/view/AttachmentView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 204
    :cond_0
    return-object v0
.end method

.method private setToChildrenContentDescription()V
    .locals 6

    .prologue
    .line 244
    sget v0, Lcom/android/calendar/R$id;->file_name:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/view/AttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 245
    sget v1, Lcom/android/calendar/R$id;->file_type:I

    invoke-virtual {p0, v1}, Lcom/google/android/calendar/event/view/AttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 246
    invoke-virtual {p0}, Lcom/google/android/calendar/event/view/AttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$string;->join_descriptions:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 247
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    .line 248
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v4, v0

    .line 247
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/view/AttachmentView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 250
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 219
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 220
    iget-boolean v0, p0, Lcom/google/android/calendar/event/view/AttachmentView;->mViewOnly:Z

    if-eqz v0, :cond_1

    .line 221
    invoke-virtual {p0}, Lcom/google/android/calendar/event/view/AttachmentView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/google/android/calendar/event/view/AttachmentView;->setToChildrenContentDescription()V

    .line 224
    :cond_0
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 226
    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 233
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 234
    iget-boolean v0, p0, Lcom/google/android/calendar/event/view/AttachmentView;->mViewOnly:Z

    if-eqz v0, :cond_0

    .line 235
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 237
    :cond_0
    return-void
.end method

.method public openAttachment(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 123
    iget-object v0, p0, Lcom/google/android/calendar/event/view/AttachmentView;->mFileUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 172
    :goto_0
    return-void

    .line 128
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    const-string v0, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 131
    iget-object v0, p0, Lcom/google/android/calendar/event/view/AttachmentView;->mFileUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 134
    invoke-virtual {p0}, Lcom/google/android/calendar/event/view/AttachmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 135
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 136
    invoke-virtual {v0, v1, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 137
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 138
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 139
    const-string v4, "com.google.android.apps.docs"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 140
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    if-eqz p1, :cond_1

    .line 145
    invoke-static {p1}, Lcom/google/android/gms/identity/accounts/api/AccountData;->forAccount(Ljava/lang/String;)Lcom/google/android/gms/identity/accounts/api/AccountData;

    move-result-object v0

    .line 144
    invoke-static {v2, v1, v0}, Lcom/google/android/gms/identity/accounts/api/AccountDataUtil;->addAccountData(Landroid/content/Context;Landroid/content/Intent;Lcom/google/android/gms/identity/accounts/api/AccountData;)Z

    .line 152
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 153
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 154
    const-string v5, "com.google"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 156
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 157
    const-string v5, "salt"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string v4, "digest"

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 159
    :catch_0
    move-exception v0

    .line 160
    sget-object v0, Lcom/google/android/calendar/event/view/AttachmentView;->TAG:Ljava/lang/String;

    const-string v4, "Unable to load MD5 digest instance"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_1

    .line 167
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/calendar/event/view/AttachmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 168
    :catch_1
    move-exception v0

    .line 169
    invoke-virtual {p0}, Lcom/google/android/calendar/event/view/AttachmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->attachment_no_activity:I

    invoke-static {v0, v1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method public setAttachment(Lcom/google/api/services/calendar/model/EventAttachment;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 78
    if-nez p1, :cond_0

    .line 120
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/EventAttachment;->getFileUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/view/AttachmentView;->mFileUrl:Ljava/lang/String;

    .line 85
    invoke-virtual {p0}, Lcom/google/android/calendar/event/view/AttachmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/EventAttachment;->getIconLink()Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-static {v0, v1}, Lcom/android/calendar/event/segment/AttachmentHelper;->inferMimeType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/EventAttachment;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-virtual {p0}, Lcom/google/android/calendar/event/view/AttachmentView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/calendar/event/segment/AttachmentHelper;->getTypeDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-virtual {p0}, Lcom/google/android/calendar/event/view/AttachmentView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/calendar/event/segment/AttachmentHelper;->getTypeIconUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 89
    invoke-virtual {p0}, Lcom/google/android/calendar/event/view/AttachmentView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/calendar/event/segment/AttachmentHelper;->getTypeColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 91
    sget v0, Lcom/android/calendar/R$id;->file_name:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/view/AttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 92
    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    :cond_1
    sget v0, Lcom/android/calendar/R$id;->file_type:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/view/AttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 97
    if-eqz v0, :cond_2

    .line 98
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    if-eqz v3, :cond_2

    .line 102
    invoke-virtual {p0}, Lcom/google/android/calendar/event/view/AttachmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/android/calendar/timely/UrlRequestKey;->fromUrlString(Landroid/content/Context;Ljava/lang/String;)Lcom/android/calendar/timely/UrlRequestKey;

    move-result-object v1

    .line 103
    new-instance v2, Lcom/android/calendar/timely/LargeThreadpoolBitmapDrawable;

    .line 104
    invoke-virtual {p0}, Lcom/google/android/calendar/event/view/AttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/calendar/event/view/AttachmentView;->mIconCache:Lcom/android/bitmap/BitmapCache;

    invoke-direct {v2, v3, v5, v8, v7}, Lcom/android/calendar/timely/LargeThreadpoolBitmapDrawable;-><init>(Landroid/content/res/Resources;Lcom/android/bitmap/BitmapCache;ZLcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;)V

    .line 105
    iget v3, p0, Lcom/google/android/calendar/event/view/AttachmentView;->mIconWidth:I

    iget v5, p0, Lcom/google/android/calendar/event/view/AttachmentView;->mIconHeight:I

    invoke-virtual {v2, v3, v5}, Lcom/android/calendar/timely/LargeThreadpoolBitmapDrawable;->setDecodeDimensions(II)V

    .line 106
    new-instance v3, Landroid/graphics/Rect;

    iget v5, p0, Lcom/google/android/calendar/event/view/AttachmentView;->mIconWidth:I

    iget v6, p0, Lcom/google/android/calendar/event/view/AttachmentView;->mIconHeight:I

    invoke-direct {v3, v8, v8, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v3}, Lcom/android/calendar/timely/LargeThreadpoolBitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 107
    invoke-virtual {v2, v1}, Lcom/android/calendar/timely/LargeThreadpoolBitmapDrawable;->bind(Lcom/android/bitmap/RequestKey;)V

    .line 109
    invoke-virtual {v0, v2, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 113
    :cond_2
    sget v0, Lcom/android/calendar/R$id;->image:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/view/AttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 114
    if-eqz v0, :cond_3

    .line 115
    invoke-direct {p0, v4}, Lcom/google/android/calendar/event/view/AttachmentView;->getCornersDrawable(I)Lcom/android/calendar/timely/TimelyStyledCornersBitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    :cond_3
    invoke-virtual {p0, v7}, Lcom/google/android/calendar/event/view/AttachmentView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public setViewOnly(Z)V
    .locals 0

    .prologue
    .line 211
    iput-boolean p1, p0, Lcom/google/android/calendar/event/view/AttachmentView;->mViewOnly:Z

    .line 212
    return-void
.end method
