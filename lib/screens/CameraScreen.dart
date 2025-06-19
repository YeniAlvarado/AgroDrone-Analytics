<<<<<<< HEAD
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'DetecciónDron.dart';
import 'pantalla_imagen_detectada.dart';

class OpcionesCamara extends StatelessWidget {
  final List<CameraDescription> cameras;
  const OpcionesCamara({super.key, required this.cameras});
=======
// camera_screen.dart
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class CameraScreen extends StatefulWidget {
  final List<CameraDescription> cameras;

  const CameraScreen({super.key, required this.cameras});

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  CameraController? _controller;
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    if (widget.cameras.isNotEmpty) {
      _controller = CameraController(widget.cameras[0], ResolutionPreset.medium);
      await _controller!.initialize();
      if (!mounted) return;
      setState(() => _isInitialized = true);
    }
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }
>>>>>>> 52f5e3970bde0395970daf295ddf3d20ecfb1b6b

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
      appBar: AppBar(title: const Text('AgroDrone - Demo')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              icon: const Icon(Icons.airplanemode_active),
              label: const Text('Entrar a cámara de dron'),
              style: ElevatedButton.styleFrom(minimumSize: const Size(220, 48)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => CameraScreen(cameras: cameras),
                  ),
                );
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              icon: const Icon(Icons.photo_library),
              label: const Text('Enviar imagen de prueba'),
              style: ElevatedButton.styleFrom(minimumSize: const Size(220, 48)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => PantallaImagenDetectada(),
                  ),
                );
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              icon: const Icon(Icons.video_library),
              label: const Text('Enviar video de prueba'),
              style: ElevatedButton.styleFrom(minimumSize: const Size(220, 48)),
              onPressed: () {
                // Pendiente lógica de video
              },
            ),
          ],
        ),
      ),
=======
      body: _isInitialized && _controller != null
          ? CameraPreview(_controller!)
          : const Center(child: CircularProgressIndicator()),
>>>>>>> 52f5e3970bde0395970daf295ddf3d20ecfb1b6b
    );
  }
}
