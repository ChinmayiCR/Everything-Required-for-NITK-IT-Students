.class Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$6;
.super Ljava/lang/Object;
.source "Ocrreader.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;


# direct methods
.method constructor <init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$6;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 191
    :try_start_0
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$6;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;

    const-string v0, "android.permission.CAMERA"

    invoke-virtual {p1, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 195
    :cond_0
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$6;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;

    iget-object p1, p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->cameraSource:Lcom/google/android/gms/vision/CameraSource;

    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$6;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;

    iget-object v0, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->cameraView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/vision/CameraSource;->start(Landroid/view/SurfaceHolder;)Lcom/google/android/gms/vision/CameraSource;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 197
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 210
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$6;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;

    iget-object p1, p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->cameraSource:Lcom/google/android/gms/vision/CameraSource;

    invoke-virtual {p1}, Lcom/google/android/gms/vision/CameraSource;->stop()V

    return-void
.end method
