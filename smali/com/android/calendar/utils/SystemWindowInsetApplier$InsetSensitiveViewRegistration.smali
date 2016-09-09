.class Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;
.super Ljava/lang/Object;
.source "SystemWindowInsetApplier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/utils/SystemWindowInsetApplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InsetSensitiveViewRegistration"
.end annotation


# instance fields
.field private final mApplicationStyle:I

.field private final mOldBottomSpacing:I

.field private final mOldLeftSpacing:I

.field private final mOldRightSpacing:I

.field private final mOldTopSpacing:I

.field private final mSensitivity:I

.field private final mView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;II)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    if-ne p3, v5, :cond_0

    .line 248
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v0, :cond_0

    .line 249
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "%s cannot work with view %s: LayoutParams are of type %s which doesn\'t extend MarginLayoutParams."

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 251
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    aput-object p1, v2, v5

    const/4 v3, 0x2

    .line 252
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 249
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_0
    iput-object p1, p0, Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->mView:Landroid/view/View;

    .line 256
    iput p2, p0, Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->mSensitivity:I

    .line 257
    iput p3, p0, Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->mApplicationStyle:I

    .line 259
    if-ne p3, v5, :cond_1

    .line 260
    iget-object v0, p0, Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->mView:Landroid/view/View;

    .line 261
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 262
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v1, p0, Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->mOldLeftSpacing:I

    .line 263
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v1, p0, Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->mOldTopSpacing:I

    .line 264
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v1, p0, Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->mOldRightSpacing:I

    .line 265
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, p0, Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->mOldBottomSpacing:I

    .line 272
    :goto_0
    return-void

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->mOldLeftSpacing:I

    .line 268
    iget-object v0, p0, Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->mOldTopSpacing:I

    .line 269
    iget-object v0, p0, Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->mOldRightSpacing:I

    .line 270
    iget-object v0, p0, Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->mOldBottomSpacing:I

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/view/View;IILcom/android/calendar/utils/SystemWindowInsetApplier$1;)V
    .locals 0

    .prologue
    .line 232
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;-><init>(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;)I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->mApplicationStyle:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;)I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->mOldLeftSpacing:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;)I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->mOldTopSpacing:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;)I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->mOldRightSpacing:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;)I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->mOldBottomSpacing:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;)Landroid/view/View;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;)I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->mSensitivity:I

    return v0
.end method
