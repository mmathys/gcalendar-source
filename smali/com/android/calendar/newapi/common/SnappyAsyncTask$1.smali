.class Lcom/android/calendar/newapi/common/SnappyAsyncTask$1;
.super Ljava/lang/Object;
.source "SnappyAsyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/newapi/common/SnappyAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/newapi/common/SnappyAsyncTask;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/calendar/newapi/common/SnappyAsyncTask;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/calendar/newapi/common/SnappyAsyncTask$1;->this$0:Lcom/android/calendar/newapi/common/SnappyAsyncTask;

    iput-object p2, p0, Lcom/android/calendar/newapi/common/SnappyAsyncTask$1;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/calendar/newapi/common/SnappyAsyncTask$1;->this$0:Lcom/android/calendar/newapi/common/SnappyAsyncTask;

    iget-object v1, p0, Lcom/android/calendar/newapi/common/SnappyAsyncTask$1;->val$result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/common/SnappyAsyncTask;->onCompleted(Ljava/lang/Object;)V

    .line 33
    return-void
.end method
