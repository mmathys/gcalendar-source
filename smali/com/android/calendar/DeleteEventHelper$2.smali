.class Lcom/android/calendar/DeleteEventHelper$2;
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
    .line 132
    iput-object p1, p0, Lcom/android/calendar/DeleteEventHelper$2;->this$0:Lcom/android/calendar/DeleteEventHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper$2;->this$0:Lcom/android/calendar/DeleteEventHelper;

    # invokes: Lcom/android/calendar/DeleteEventHelper;->doDelete()Z
    invoke-static {v0}, Lcom/android/calendar/DeleteEventHelper;->access$400(Lcom/android/calendar/DeleteEventHelper;)Z

    .line 136
    return-void
.end method
