.class Lcom/android/calendar/DeleteEventHelper$3;
.super Ljava/lang/Object;
.source "DeleteEventHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/DeleteEventHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/DeleteEventHelper;


# direct methods
.method constructor <init>(Lcom/android/calendar/DeleteEventHelper;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/calendar/DeleteEventHelper$3;->this$0:Lcom/android/calendar/DeleteEventHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 147
    iget-object v1, p0, Lcom/android/calendar/DeleteEventHelper$3;->this$0:Lcom/android/calendar/DeleteEventHelper;

    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper$3;->this$0:Lcom/android/calendar/DeleteEventHelper;

    # getter for: Lcom/android/calendar/DeleteEventHelper;->mWhichIndex:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/calendar/DeleteEventHelper;->access$500(Lcom/android/calendar/DeleteEventHelper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # setter for: Lcom/android/calendar/DeleteEventHelper;->mWhichDelete:I
    invoke-static {v1, v0}, Lcom/android/calendar/DeleteEventHelper;->access$202(Lcom/android/calendar/DeleteEventHelper;I)I

    .line 150
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper$3;->this$0:Lcom/android/calendar/DeleteEventHelper;

    # getter for: Lcom/android/calendar/DeleteEventHelper;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/calendar/DeleteEventHelper;->access$600(Lcom/android/calendar/DeleteEventHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 151
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 152
    return-void
.end method
