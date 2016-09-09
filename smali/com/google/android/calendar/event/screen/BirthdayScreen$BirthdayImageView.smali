.class public Lcom/google/android/calendar/event/screen/BirthdayScreen$BirthdayImageView;
.super Landroid/widget/ImageView;
.source "BirthdayScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/event/screen/BirthdayScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BirthdayImageView"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/google/android/calendar/event/screen/BirthdayScreen$BirthdayImageView;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/event/screen/BirthdayScreen$BirthdayImageView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-virtual {p0}, Lcom/google/android/calendar/event/screen/BirthdayScreen$BirthdayImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$drawable;->img_birthday:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 52
    invoke-virtual {p0}, Lcom/google/android/calendar/event/screen/BirthdayScreen$BirthdayImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/calendar/R$color;->info_headline_scrim:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 57
    instance-of v0, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 58
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 59
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    .line 60
    invoke-static {v0, v2}, Lcom/android/calendar/Utils;->blendColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/screen/BirthdayScreen$BirthdayImageView;->setBackgroundColor(I)V

    .line 66
    :goto_0
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    new-array v3, v6, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v3, v5

    const/4 v1, 0x1

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v4, v3, v1

    invoke-direct {v0, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/screen/BirthdayScreen$BirthdayImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/screen/BirthdayScreen$BirthdayImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 71
    invoke-virtual {p0}, Lcom/google/android/calendar/event/screen/BirthdayScreen$BirthdayImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$integer;->ld_aware_image_mirroring:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/screen/BirthdayScreen$BirthdayImageView;->setScaleX(F)V

    .line 72
    invoke-virtual {p0, v6}, Lcom/google/android/calendar/event/screen/BirthdayScreen$BirthdayImageView;->setImportantForAccessibility(I)V

    .line 73
    return-void

    .line 62
    :cond_0
    sget-object v0, Lcom/google/android/calendar/event/screen/BirthdayScreen$BirthdayImageView;->TAG:Ljava/lang/String;

    const-string v3, "birthdayImage is not of type BitmapDrawable"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
