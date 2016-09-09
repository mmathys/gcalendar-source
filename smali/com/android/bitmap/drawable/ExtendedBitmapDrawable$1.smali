.class Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$1;
.super Ljava/lang/Object;
.source "ExtendedBitmapDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->onDecodeComplete(Lcom/android/bitmap/RequestKey;Lcom/android/bitmap/ReusableBitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;

.field final synthetic val$key:Lcom/android/bitmap/RequestKey;

.field final synthetic val$result:Lcom/android/bitmap/ReusableBitmap;


# direct methods
.method constructor <init>(Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;Lcom/android/bitmap/RequestKey;Lcom/android/bitmap/ReusableBitmap;)V
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$1;->this$0:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;

    iput-object p2, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$1;->val$key:Lcom/android/bitmap/RequestKey;

    iput-object p3, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$1;->val$result:Lcom/android/bitmap/ReusableBitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$1;->this$0:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;

    iget-object v1, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$1;->val$key:Lcom/android/bitmap/RequestKey;

    iget-object v2, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$1;->val$result:Lcom/android/bitmap/ReusableBitmap;

    # invokes: Lcom/android/bitmap/drawable/BasicBitmapDrawable;->onDecodeComplete(Lcom/android/bitmap/RequestKey;Lcom/android/bitmap/ReusableBitmap;)V
    invoke-static {v0, v1, v2}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->access$101(Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;Lcom/android/bitmap/RequestKey;Lcom/android/bitmap/ReusableBitmap;)V

    .line 399
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    const-string v0, "DONE"

    return-object v0
.end method
