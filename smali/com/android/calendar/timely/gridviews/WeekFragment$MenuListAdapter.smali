.class Lcom/android/calendar/timely/gridviews/WeekFragment$MenuListAdapter;
.super Ljava/lang/Object;
.source "WeekFragment.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/gridviews/WeekFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuListAdapter"
.end annotation


# instance fields
.field mSourceMenu:Landroid/view/Menu;

.field final synthetic this$0:Lcom/android/calendar/timely/gridviews/WeekFragment;


# direct methods
.method private constructor <init>(Lcom/android/calendar/timely/gridviews/WeekFragment;Landroid/app/Activity;ILandroid/view/View;)V
    .locals 3

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/calendar/timely/gridviews/WeekFragment$MenuListAdapter;->this$0:Lcom/android/calendar/timely/gridviews/WeekFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-direct {v0, p2, p4}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 274
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 275
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 277
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/gridviews/WeekFragment$MenuListAdapter;->mSourceMenu:Landroid/view/Menu;

    .line 278
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/timely/gridviews/WeekFragment;Landroid/app/Activity;ILandroid/view/View;Lcom/android/calendar/timely/gridviews/WeekFragment$1;)V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/calendar/timely/gridviews/WeekFragment$MenuListAdapter;-><init>(Lcom/android/calendar/timely/gridviews/WeekFragment;Landroid/app/Activity;ILandroid/view/View;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/WeekFragment$MenuListAdapter;->mSourceMenu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/WeekFragment$MenuListAdapter;->mSourceMenu:Landroid/view/Menu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/gridviews/WeekFragment$MenuListAdapter;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 310
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/gridviews/WeekFragment$MenuListAdapter;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/WeekFragment$MenuListAdapter;->this$0:Lcom/android/calendar/timely/gridviews/WeekFragment;

    invoke-virtual {v0}, Lcom/android/calendar/timely/gridviews/WeekFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 321
    sget v1, Lcom/android/calendar/R$layout;->popup_window_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 323
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/gridviews/WeekFragment$MenuListAdapter;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 325
    sget v0, Lcom/android/calendar/R$id;->title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 326
    invoke-interface {v2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    return-object v1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/WeekFragment$MenuListAdapter;->mSourceMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x1

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    .prologue
    .line 292
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    .prologue
    .line 296
    return-void
.end method
