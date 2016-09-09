.class public Lcom/android/calendar/timely/DrawerColorCheckBox;
.super Landroid/widget/CheckBox;
.source "DrawerColorCheckBox.java"


# instance fields
.field private final mStateListDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 44
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 45
    sget v2, Lcom/android/calendar/R$drawable;->quantum_ic_check_box_black_24:I

    .line 46
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 47
    sget v3, Lcom/android/calendar/R$drawable;->quantum_ic_check_box_outline_blank_black_24:I

    .line 48
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 50
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 51
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 53
    new-array v3, v6, [I

    const v4, 0x10100a0

    aput v4, v3, v5

    invoke-virtual {v1, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 54
    new-array v2, v6, [I

    const v3, -0x10100a0

    aput v3, v2, v5

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 55
    iput-object v1, p0, Lcom/android/calendar/timely/DrawerColorCheckBox;->mStateListDrawable:Landroid/graphics/drawable/Drawable;

    .line 56
    iget-object v0, p0, Lcom/android/calendar/timely/DrawerColorCheckBox;->mStateListDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/DrawerColorCheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/timely/DrawerColorCheckBox;->mStateListDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public setColor(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    new-array v0, v3, [[I

    new-array v1, v2, [I

    aput-object v1, v0, v2

    .line 66
    new-array v1, v3, [I

    aput p1, v1, v2

    .line 67
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p0, v2}, Lcom/android/calendar/timely/DrawerColorCheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/DrawerColorCheckBox;->mStateListDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method
