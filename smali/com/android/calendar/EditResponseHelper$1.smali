.class Lcom/android/calendar/EditResponseHelper$1;
.super Ljava/lang/Object;
.source "EditResponseHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EditResponseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EditResponseHelper;


# direct methods
.method constructor <init>(Lcom/android/calendar/EditResponseHelper;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/calendar/EditResponseHelper$1;->this$0:Lcom/android/calendar/EditResponseHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/calendar/EditResponseHelper$1;->this$0:Lcom/android/calendar/EditResponseHelper;

    # setter for: Lcom/android/calendar/EditResponseHelper;->mWhichEvents:I
    invoke-static {v0, p2}, Lcom/android/calendar/EditResponseHelper;->access$002(Lcom/android/calendar/EditResponseHelper;I)I

    .line 105
    iget-object v0, p0, Lcom/android/calendar/EditResponseHelper$1;->this$0:Lcom/android/calendar/EditResponseHelper;

    # getter for: Lcom/android/calendar/EditResponseHelper;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/calendar/EditResponseHelper;->access$100(Lcom/android/calendar/EditResponseHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 106
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 107
    return-void
.end method
