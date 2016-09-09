.class Lcom/android/calendar/calendarlist/DrawerListAdapter$1;
.super Ljava/lang/Object;
.source "DrawerListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/calendarlist/DrawerListAdapter;-><init>(Landroid/app/Activity;ZLjava/util/Set;Lcom/android/calendar/calendarlist/DrawerFragment$OnDrawerItemClickedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/calendarlist/DrawerListAdapter;

.field final synthetic val$listener:Lcom/android/calendar/calendarlist/DrawerFragment$OnDrawerItemClickedListener;


# direct methods
.method constructor <init>(Lcom/android/calendar/calendarlist/DrawerListAdapter;Lcom/android/calendar/calendarlist/DrawerFragment$OnDrawerItemClickedListener;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/calendar/calendarlist/DrawerListAdapter$1;->this$0:Lcom/android/calendar/calendarlist/DrawerListAdapter;

    iput-object p2, p0, Lcom/android/calendar/calendarlist/DrawerListAdapter$1;->val$listener:Lcom/android/calendar/calendarlist/DrawerFragment$OnDrawerItemClickedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;

    .line 165
    iget-object v1, p0, Lcom/android/calendar/calendarlist/DrawerListAdapter$1;->this$0:Lcom/android/calendar/calendarlist/DrawerListAdapter;

    # getter for: Lcom/android/calendar/calendarlist/DrawerListAdapter;->mViewSwitcherIds:Landroid/util/SparseBooleanArray;
    invoke-static {v1}, Lcom/android/calendar/calendarlist/DrawerListAdapter;->access$000(Lcom/android/calendar/calendarlist/DrawerListAdapter;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    iget v2, v0, Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;->mId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/android/calendar/calendarlist/DrawerListAdapter$1;->this$0:Lcom/android/calendar/calendarlist/DrawerListAdapter;

    invoke-virtual {v1}, Lcom/android/calendar/calendarlist/DrawerListAdapter;->refreshViewSwitcherIcons()V

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/calendarlist/DrawerListAdapter$1;->val$listener:Lcom/android/calendar/calendarlist/DrawerFragment$OnDrawerItemClickedListener;

    if-eqz v1, :cond_1

    .line 169
    iget-object v1, p0, Lcom/android/calendar/calendarlist/DrawerListAdapter$1;->val$listener:Lcom/android/calendar/calendarlist/DrawerFragment$OnDrawerItemClickedListener;

    iget v0, v0, Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;->mId:I

    invoke-interface {v1, v0}, Lcom/android/calendar/calendarlist/DrawerFragment$OnDrawerItemClickedListener;->onDrawerItemClicked(I)V

    .line 171
    :cond_1
    return-void
.end method
