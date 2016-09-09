.class public Lcom/android/calendar/newapi/overflow/OverflowMenuFallback;
.super Landroid/widget/ImageButton;
.source "OverflowMenuFallback.java"

# interfaces
.implements Lcom/android/calendar/newapi/overflow/OverflowMenuCompat$OverflowMenu;


# instance fields
.field private mCallback:Lcom/android/calendar/newapi/overflow/OverflowMenuCompat$OnOverflowItemClickCallback;

.field private final mOverflowMenu:Landroid/widget/PopupMenu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-direct {p0}, Lcom/android/calendar/newapi/overflow/OverflowMenuFallback;->createPopupMenu()Landroid/widget/PopupMenu;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/overflow/OverflowMenuFallback;->mOverflowMenu:Landroid/widget/PopupMenu;

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/newapi/overflow/OverflowMenuFallback;)Lcom/android/calendar/newapi/overflow/OverflowMenuCompat$OnOverflowItemClickCallback;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/calendar/newapi/overflow/OverflowMenuFallback;->mCallback:Lcom/android/calendar/newapi/overflow/OverflowMenuCompat$OnOverflowItemClickCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/newapi/overflow/OverflowMenuFallback;)Landroid/widget/PopupMenu;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/calendar/newapi/overflow/OverflowMenuFallback;->mOverflowMenu:Landroid/widget/PopupMenu;

    return-object v0
.end method

.method private createPopupMenu()Landroid/widget/PopupMenu;
    .locals 3

    .prologue
    .line 70
    invoke-static {}, Lcom/android/calendar/Utils;->isKitKatOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/overflow/OverflowMenuFallback;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x800005

    invoke-direct {v0, v1, p0, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    .line 73
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/overflow/OverflowMenuFallback;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0
.end method

.method private initOverflowButton()V
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/android/calendar/Utils;->isKitKatOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/calendar/newapi/overflow/OverflowMenuFallback;->mOverflowMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getDragToOpenListener()Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/overflow/OverflowMenuFallback;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 61
    :cond_0
    new-instance v0, Lcom/android/calendar/newapi/overflow/OverflowMenuFallback$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/newapi/overflow/OverflowMenuFallback$2;-><init>(Lcom/android/calendar/newapi/overflow/OverflowMenuFallback;)V

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/overflow/OverflowMenuFallback;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    return-void
.end method

.method private initOverflowMenu(I)V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/calendar/newapi/overflow/OverflowMenuFallback;->mOverflowMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 45
    iget-object v0, p0, Lcom/android/calendar/newapi/overflow/OverflowMenuFallback;->mOverflowMenu:Landroid/widget/PopupMenu;

    new-instance v1, Lcom/android/calendar/newapi/overflow/OverflowMenuFallback$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/newapi/overflow/OverflowMenuFallback$1;-><init>(Lcom/android/calendar/newapi/overflow/OverflowMenuFallback;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 55
    return-void
.end method


# virtual methods
.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/calendar/newapi/overflow/OverflowMenuFallback;->mOverflowMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public init(I)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/calendar/newapi/overflow/OverflowMenuFallback;->initOverflowMenu(I)V

    .line 30
    invoke-direct {p0}, Lcom/android/calendar/newapi/overflow/OverflowMenuFallback;->initOverflowButton()V

    .line 31
    return-void
.end method

.method public setCallback(Lcom/android/calendar/newapi/overflow/OverflowMenuCompat$OnOverflowItemClickCallback;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/calendar/newapi/overflow/OverflowMenuFallback;->mCallback:Lcom/android/calendar/newapi/overflow/OverflowMenuCompat$OnOverflowItemClickCallback;

    .line 36
    return-void
.end method
