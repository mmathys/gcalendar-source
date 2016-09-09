.class public Lcom/android/calendar/utils/SystemWindowInsetApplier;
.super Ljava/lang/Object;
.source "SystemWindowInsetApplier.java"

# interfaces
.implements Landroid/support/v4/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final mConsumesInsets:Z

.field private final mViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const-class v0, Lcom/android/calendar/utils/SystemWindowInsetApplier;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/utils/SystemWindowInsetApplier;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/calendar/utils/SystemWindowInsetApplier;-><init>(Z)V

    .line 82
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-boolean p1, p0, Lcom/android/calendar/utils/SystemWindowInsetApplier;->mConsumesInsets:Z

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/utils/SystemWindowInsetApplier;->mViews:Ljava/util/Map;

    .line 97
    return-void
.end method

.method private applyMarginToView(Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;IIII)V
    .locals 2

    .prologue
    .line 205
    .line 206
    # getter for: Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->mView:Landroid/view/View;
    invoke-static {p1}, Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->access$600(Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 207
    # getter for: Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->mSensitivity:I
    invoke-static {p1}, Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->access$700(Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_0

    .line 208
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 210
    :cond_0
    # getter for: Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->mSensitivity:I
    invoke-static {p1}, Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->access$700(Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_1

    .line 211
    iput p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 213
    :cond_1
    # getter for: Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->mSensitivity:I
    invoke-static {p1}, Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->access$700(Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;)I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_2

    .line 214
    iput p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 216
    :cond_2
    # getter for: Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->mSensitivity:I
    invoke-static {p1}, Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->access$700(Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;)I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-lez v1, :cond_3

    .line 217
    iput p5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 219
    :cond_3
    # getter for: Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->mView:Landroid/view/View;
    invoke-static {p1}, Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->access$600(Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    return-void
.end method

.method private applyPaddingToView(Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;IIII)V
    .locals 2

    .prologue
    .line 224
    # getter for: Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->mView:Landroid/view/View;
    invoke-static {p1}, Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->access$600(Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;)Landroid/view/View;

    move-result-object v0

    .line 225
    # getter for: Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->mSensitivity:I
    invoke-static {p1}, Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->access$700(Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_0

    .line 226
    :goto_0
    # getter for: Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->mSensitivity:I
    invoke-static {p1}, Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->access$700(Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_1

    .line 227
    :goto_1
    # getter for: Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->mSensitivity:I
    invoke-static {p1}, Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->access$700(Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;)I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_2

    .line 228
    :goto_2
    # getter for: Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->mSensitivity:I
    invoke-static {p1}, Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->access$700(Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;)I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-lez v1, :cond_3

    .line 224
    :goto_3
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/view/View;->setPadding(IIII)V

    .line 230
    return-void

    .line 225
    :cond_0
    # getter for: Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->mView:Landroid/view/View;
    invoke-static {p1}, Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->access$600(Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    goto :goto_0

    .line 226
    :cond_1
    # getter for: Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->mView:Landroid/view/View;
    invoke-static {p1}, Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->access$600(Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    goto :goto_1

    .line 227
    :cond_2
    # getter for: Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->mView:Landroid/view/View;
    invoke-static {p1}, Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->access$600(Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result p4

    goto :goto_2

    .line 228
    :cond_3
    # getter for: Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->mView:Landroid/view/View;
    invoke-static {p1}, Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->access$600(Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result p5

    goto :goto_3
.end method

.method private restoreSpacing(Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;)V
    .locals 6

    .prologue
    .line 194
    # getter for: Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->mApplicationStyle:I
    invoke-static {p1}, Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->access$100(Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 195
    # getter for: Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->mOldLeftSpacing:I
    invoke-static {p1}, Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->access$200(Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;)I

    move-result v2

    # getter for: Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->mOldTopSpacing:I
    invoke-static {p1}, Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->access$300(Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;)I

    move-result v3

    # getter for: Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->mOldRightSpacing:I
    invoke-static {p1}, Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->access$400(Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;)I

    move-result v4

    .line 196
    # getter for: Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->mOldBottomSpacing:I
    invoke-static {p1}, Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->access$500(Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    .line 195
    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/utils/SystemWindowInsetApplier;->applyMarginToView(Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;IIII)V

    .line 201
    :goto_0
    return-void

    .line 198
    :cond_0
    # getter for: Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->mOldLeftSpacing:I
    invoke-static {p1}, Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->access$200(Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;)I

    move-result v2

    # getter for: Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->mOldTopSpacing:I
    invoke-static {p1}, Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->access$300(Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;)I

    move-result v3

    # getter for: Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->mOldRightSpacing:I
    invoke-static {p1}, Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->access$400(Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;)I

    move-result v4

    .line 199
    # getter for: Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->mOldBottomSpacing:I
    invoke-static {p1}, Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->access$500(Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    .line 198
    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/utils/SystemWindowInsetApplier;->applyPaddingToView(Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;IIII)V

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 139
    iget-object v0, p0, Lcom/android/calendar/utils/SystemWindowInsetApplier;->mViews:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    sget-object v0, Lcom/android/calendar/utils/SystemWindowInsetApplier;->TAG:Ljava/lang/String;

    const-string v1, "Received addView for view %s, which was already present. Ignoring."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 155
    :goto_0
    return-void

    .line 147
    :cond_0
    :try_start_0
    new-instance v0, Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;-><init>(Landroid/view/View;IILcom/android/calendar/utils/SystemWindowInsetApplier$1;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    iget-object v1, p0, Lcom/android/calendar/utils/SystemWindowInsetApplier;->mViews:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    sget-object v1, Lcom/android/calendar/utils/SystemWindowInsetApplier;->TAG:Ljava/lang/String;

    const-string v2, "Failed to create a view registration"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public applyInsets(IIII)V
    .locals 7

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/calendar/utils/SystemWindowInsetApplier;->mViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;

    .line 185
    # getter for: Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->mApplicationStyle:I
    invoke-static {v1}, Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;->access$100(Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 186
    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/utils/SystemWindowInsetApplier;->applyMarginToView(Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;IIII)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 188
    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/utils/SystemWindowInsetApplier;->applyPaddingToView(Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;IIII)V

    goto :goto_0

    .line 191
    :cond_1
    return-void
.end method

.method getNrOfRegisteredViews()I
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/calendar/utils/SystemWindowInsetApplier;->mViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 4

    .prologue
    .line 110
    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v0

    .line 111
    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v1

    .line 112
    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v2

    .line 113
    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v3

    .line 110
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/calendar/utils/SystemWindowInsetApplier;->applyInsets(IIII)V

    .line 115
    iget-boolean v0, p0, Lcom/android/calendar/utils/SystemWindowInsetApplier;->mConsumesInsets:Z

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->consumeSystemWindowInsets()Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object p2

    .line 118
    :cond_0
    return-object p2
.end method

.method public removeView(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/calendar/utils/SystemWindowInsetApplier;->mViews:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;

    .line 169
    if-nez v0, :cond_0

    .line 170
    sget-object v0, Lcom/android/calendar/utils/SystemWindowInsetApplier;->TAG:Ljava/lang/String;

    const-string v1, "Could not remove view %s in removeView. Items in mViews: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/calendar/utils/SystemWindowInsetApplier;->mViews:Ljava/util/Map;

    .line 171
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    aput-object v4, v2, v3

    .line 170
    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/calendar/utils/SystemWindowInsetApplier;->restoreSpacing(Lcom/android/calendar/utils/SystemWindowInsetApplier$InsetSensitiveViewRegistration;)V

    goto :goto_0
.end method
