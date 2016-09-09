.class Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$2;
.super Ljava/lang/Object;
.source "ChipCollectionEditText.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->initialize(Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$2;->this$0:Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$2;->this$0:Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->getSelectedChip()Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 156
    :goto_0
    if-eqz v0, :cond_0

    .line 157
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$2;->this$0:Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;

    # setter for: Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mActiveActionMode:Landroid/view/ActionMode;
    invoke-static {v1, p1}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->access$302(Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 159
    :cond_0
    return v0

    .line 155
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$2;->this$0:Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;

    const/4 v1, 0x0

    # setter for: Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mActiveActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->access$302(Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 175
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method
